
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:musify/core/services/injection_container.dart';
import 'package:musify/core/util/constants.dart';
import 'package:musify/src/auth/presentation/cubit/auth_cubit.dart';
import 'package:musify/src/auth/presentation/views/auth_screen.dart';
import 'package:musify/src/matches/presentation/views/matches_screen.dart';
import 'package:musify/src/onboarding/presentation/cubit/on_boarding_cubit.dart';
import 'package:musify/src/onboarding/presentation/views/on_boarding_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case '/':
      final prefs = sl<SharedPreferences>();
      return _pageBuilder(
        (context) {
          if (prefs.getBool(kFirstTimeUser) ?? true) {
            return BlocProvider(
              create: (context) => sl<OnBoardingCubit>(),
              child: const OnBoardingScreen(),
            );
          }
          // TODO(user loging): check if user is logged also.
          return const MatchesScreen();
        },
        settings: settings,
      );

    case AuthScreen.routeName:
      return _pageBuilder(
        (_) => BlocProvider(
          create: (context) => sl<AuthCubit>(),
          child: const AuthScreen(),
        ),
        settings: settings,
      );

    default:
      return _pageBuilder(
        (_) => const OnBoardingScreen(),
        settings: settings,
      );
  }
}

PageRouteBuilder<dynamic> _pageBuilder(
  Widget Function(BuildContext) page, {
  required RouteSettings settings,
}) {
  return PageRouteBuilder(
    settings: settings,
    transitionsBuilder: (_, animation, __, child) => FadeTransition(
      opacity: animation,
      child: child,
    ),
    pageBuilder: (context, _, __) => page(context),
  );
}
