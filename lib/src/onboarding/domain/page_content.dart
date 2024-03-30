abstract class PageContent {
  const PageContent(
      {required this.imagePath,
      required this.title,
      required this.desc,
      required this.index});

  final String imagePath;
  final String title;
  final String desc;
  final int index;
}

class PageOne extends PageContent {
  const PageOne()
      : super(
          imagePath: '',
          title: 'First Page',
          desc: 'This is the first onboarding page',
          index: 0,
        );
}

class PageTwo extends PageContent {
  const PageTwo()
      : super(
          imagePath: '',
          title: 'Second Page',
          desc: 'This is the second onboarding page',
          index: 1,
        );
}

class PageThree extends PageContent {
  const PageThree()
      : super(
          imagePath: '',
          title: 'Third Page',
          desc: 'This is the third onboarding page',
          index: 2,
        );
}
