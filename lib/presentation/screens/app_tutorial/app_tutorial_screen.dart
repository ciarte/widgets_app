import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SlidesInfo {
  final String title;
  final String caption;
  final String imageUrl;

  SlidesInfo(this.title, this.caption, this.imageUrl);
}

final slides = <SlidesInfo>[
  SlidesInfo(
      'Busca la comida',
      'GHklahdfiu afba alfh ajfauf aldgi nd a;daifgh addh des fjby.',
      'assets/images/1.png'),
  SlidesInfo(
      'Entrega rapida',
      'ygadsf osfh sjdfg  aosf swygdqy bf asoi pq,  iwe skfnajgf ahsfhy sgf sajgsfuiaW Aiduq wigiaB wyd aouf sodfU US oe d iKDFY jafu.',
      'assets/images/2.png'),
  SlidesInfo(
      'Disfruta la comida', 'zdjkfg adsufbaik aibn!!', 'assets/images/3.png'),
];

class AppTutorialScreen extends StatefulWidget {
  static const name = 'tutorial_screen';
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
      if (!endReached && page >= (slides.length - 1.7)) {
        setState(() {
          endReached = true;
        });
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    pageViewController.dispose();
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
                children: slides
                    .map((slideData) => _Slide(
                          title: slideData.title,
                          caption: slideData.caption,
                          imageUrl: slideData.imageUrl,
                        ))
                    .toList()),
            Positioned(
              right: 20,
              top: 60,
              child: TextButton(
                onPressed: () => context.pop(),
                child: const Text('Salir'),
              ),
            ),
            endReached
                ? Positioned(
                    bottom: 30,
                    right: 20,
                    child: FadeInRight(
                      delay: const Duration(milliseconds: 200),
                      child: FilledButton(
                          onPressed: () => context.pop(),
                          child: const Text('Comenzar')),
                    ),
                  )
                : const SizedBox()
          ],
        ));
  }
}

class _Slide extends StatelessWidget {
  final String title;
  final String caption;
  final String imageUrl;

  const _Slide(
      {required this.title, required this.caption, required this.imageUrl});
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
                Image(
                  image: AssetImage(imageUrl),
                ),
                const SizedBox(height: 20),
                Text(title, style: titleStyle),
                const SizedBox(height: 10),
                Text(caption, style: captionStyle),
              ]),
        ));
  }
}
