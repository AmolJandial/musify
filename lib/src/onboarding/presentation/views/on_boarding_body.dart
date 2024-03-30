import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:musify/core/res/button_styles.dart';
import 'package:musify/src/auth/presentation/views/auth_screen.dart';
import 'package:musify/src/onboarding/domain/page_content.dart';

class OnBoardingBody extends StatelessWidget {
  const OnBoardingBody({
    required PageContent content,
    required void Function(int index) goToPage,
    super.key,
  })  : _content = content,
        _goToPage = goToPage;

  final PageContent _content;
  final void Function(int index) _goToPage;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(height: 50),
        const Placeholder(
          child: SizedBox(
            width: double.infinity,
            height: 300,
          ),
        ),
        const SizedBox(height: 16),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: AutoSizeText(
            _content.title,
            style: Theme.of(context).textTheme.headlineLarge,
            textAlign: TextAlign.center,
          ),
        ),
        AutoSizeText(
          _content.desc,
          style: Theme.of(context).textTheme.bodyLarge,
          textAlign: TextAlign.center,
        ),
        const Expanded(
          child: SizedBox(),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: TextButton(
            onPressed: _content.index != 2
                ? () => _goToPage(_content.index + 1)
                : () => _handleFinishEvent(context),
            style: ButtonStyles.filledRoundedCornerStyle,
            child: AutoSizeText(
              _content.index != 2 ? 'Next' : 'Finish',
              style: Theme.of(context).textTheme.labelLarge,
            ),
          ),
        ),
        if(_content.index != 2)
          TextButton(
          onPressed: () => _handleFinishEvent(context),
          style: ButtonStyles.roundedCornerStyle,
          child: AutoSizeText(
            'Skip',
            style: Theme.of(context).textTheme.labelLarge,
          ),
        ),
        const SizedBox(height: 32),
      ],
    );
  }

  void _handleFinishEvent(BuildContext context){
    Navigator.pushReplacementNamed(context, AuthScreen.routeName);
  }
}
