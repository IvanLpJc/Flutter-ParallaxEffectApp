import 'package:flutter/material.dart';
import 'package:parallax_effect/ui/widgets/video_card.dart';

class HomePage extends StatelessWidget {
  static const String route = "home";
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: _Slider(),
    );
  }
}

class _Slider extends StatefulWidget {
  const _Slider();

  @override
  State<_Slider> createState() => _SliderState();
}

class _SliderState extends State<_Slider> {
  late PageController _pageController;

  int _selectedIndex = 0;

  final videos = [
    {
      'video': 'assets/videos/video-1.mp4',
      'description': 'Freedom on the mountain',
    },
    {
      'video': 'assets/videos/video-2.mp4',
      'description': 'Forest vibes',
    },
    {
      'video': 'assets/videos/video-3.mp4',
      'description': 'Discover the paradise',
    },
    {
      'video': 'assets/videos/video-4.mp4',
      'description': 'Waterfall of calm',
    },
  ];

  @override
  void initState() {
    super.initState();
    _pageController = PageController(viewportFraction: 0.8);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const SizedBox(
          width: 250,
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Text(
                'Discover',
                style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
              ),
              Text(
                "One's destination is never a place, but always a new way of seeing things",
                maxLines: 2,
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.65,
          child: PageView.builder(
            controller: _pageController,
            itemCount: videos.length,
            pageSnapping: true,
            onPageChanged: (i) => setState(
              () => _selectedIndex = i,
            ),
            itemBuilder: (context, index) {
              return VideoCard(
                  assetPath: videos[index]['video']!,
                  text: videos[index]['description']!,
                  isSelected: _selectedIndex == index);
            },
          ),
        ),
      ],
    );
  }
}
