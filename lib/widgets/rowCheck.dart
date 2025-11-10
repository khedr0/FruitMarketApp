import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../constants/colors.dart';

class ImageCarousel extends StatefulWidget {
  const ImageCarousel({super.key});

  @override
  State<ImageCarousel> createState() => _ImageCarouselState();
}

class _ImageCarouselState extends State<ImageCarousel> {
  final PageController _controller = PageController();
  final List<String> images = [
    'assets/Frame 2863.png',
    "assets/Frame 2863.png",
    "assets/images.png"
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // الـ Slider نفسه
        SizedBox(
          height: 160,
          child: PageView.builder(
            controller: _controller,
            itemCount: images.length,
            itemBuilder: (context, index) {
              return Container(
                margin: const EdgeInsets.symmetric(horizontal: 8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: AppColors.white,
                ),
                clipBehavior: Clip.antiAlias,
                child: Image.asset(
                  images[index],
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
              );
            },
          ),
        ),

        const SizedBox(height: 12),

        // النقط اللي تحت
        SmoothPageIndicator(
          controller: _controller,
          count: images.length,
          effect: const ExpandingDotsEffect(
            dotHeight: 6,
            dotWidth: 6,
            activeDotColor: AppColors.primaryDark,
            dotColor: Colors.grey,
          ),
        ),
      ],
    );
  }
}
