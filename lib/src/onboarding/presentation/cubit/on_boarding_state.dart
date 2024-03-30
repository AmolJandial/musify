part of 'on_boarding_cubit.dart';

abstract class OnBoardingState extends Equatable {
  const OnBoardingState({
    required this.imagePath,
    required this.title,
    required this.desc,
    required this.index,
  });

  final String imagePath;
  final String title;
  final String desc;
  final int index;

  @override
  List<Object> get props => [];
}

class OnBoardingFirst extends OnBoardingState {
  const OnBoardingFirst(): super(
    imagePath: '',
    title: 'First Page',
    desc: 'This is the first onboarding page',
    index: 0,
  );
}

class OnBoardingSecond extends OnBoardingState {
  const OnBoardingSecond(): super(
    imagePath: '',
    title: 'Second Page',
    desc: 'This is the Second onboarding page',
    index: 1,
  );
}

class OnBoardingThird extends OnBoardingState {
  const OnBoardingThird(): super(
    imagePath: '',
    title: 'Third Page',
    desc: 'This is the third onboarding page',
    index: 2,
  );
}
