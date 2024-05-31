import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SlideInfo {
  final String title;
  final String caption;
  final String imageURL;

  SlideInfo(
      {required this.title, required this.caption, required this.imageURL});
}

final slides = <SlideInfo>[
  SlideInfo(
      title: 'Busca la comida',
      caption:
          'Veniam cillum cillum ex eiusmod laborum sunt officia magna magna esse proident exercitation laboris.',
      imageURL: 'assets/images/1.png'),
  SlideInfo(
      title: 'Entrega rápida',
      caption:
          'Magna adipisicing incididunt ipsum exercitation irure amet consectetur adipisicing.',
      imageURL: 'assets/images/2.png'),
  SlideInfo(
      title: 'Disfruta la comida',
      caption:
          'Ad dolore ea non reprehenderit reprehenderit irure fugiat deserunt esse ut deserunt labore.',
      imageURL: 'assets/images/3.png'),
];

class AppTutorialScreen extends StatefulWidget {
  static const String name = 'tutorial_screen';

  const AppTutorialScreen({super.key});

  @override
  State<AppTutorialScreen> createState() => _AppTutorialScreenState();
}

class _AppTutorialScreenState extends State<AppTutorialScreen> {
  final PageController pageViewController = PageController();
  bool endReached = false;

  @override
  void initState() {
    super.initState();
    pageViewController.addListener(() {
      final page = pageViewController.page ?? 0;
      if (!endReached && page >= (slides.length - 1.5)) {
        setState(() {
          endReached = true;
        });
      }
    });
  }

  @override
  void dispose() {
    pageViewController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          PageView(
            controller: pageViewController,
            physics: const BouncingScrollPhysics(),
            children:
                slides.map((slideData) => _Slide(slide: slideData)).toList(),
          ),
          Positioned(
              right: 20,
              top: 50,
              child: TextButton(
                child: const Text('Omitir'),
                onPressed: () => context.pop(),
              )),
          endReached
              ? Positioned(
                  bottom: 30,
                  right: 30,
                  child: FadeInRight(
                    from: 15,
                    delay: const Duration(microseconds: 500),
                    child: FilledButton(
                      child: const Text('Comenzar'),
                      onPressed: () => context.pop(),
                    ),
                  ))
              : const SizedBox()
        ],
      ),
    );
  }
}

class _Slide extends StatelessWidget {
  final SlideInfo slide;

  const _Slide({required this.slide});

  @override
  Widget build(BuildContext context) {
    final titleStyle = Theme.of(context).textTheme.titleLarge;
    final captionStyle = Theme.of(context).textTheme.bodySmall;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(image: AssetImage(slide.imageURL)),
            const SizedBox(
              height: 20,
            ),
            Text(
              slide.title,
              style: titleStyle,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(slide.caption, style: captionStyle),
          ],
        ),
      ),
    );
  }
}
