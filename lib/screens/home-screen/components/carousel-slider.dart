import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_traveler_app/utils/constant.dart';
import 'package:flutter_traveler_app/utils/info_app.dart';

class CarouselSlider extends StatefulWidget {
  const CarouselSlider({Key? key}) : super(key: key);

  @override
  State<CarouselSlider> createState() => _CarouselSliderState();
}

class _CarouselSliderState extends State<CarouselSlider> {
  late PageController _pageController;
  int _currentPage = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController(
      initialPage: _currentPage,
      viewportFraction: 0.8,
    );

    @override
    void dispose() {
      super.dispose();
      _pageController.dispose();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text("Promo yang cocok untukmu", style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w800,
            color: Styles.black,
          ),),
          AspectRatio(
            aspectRatio: 16 / 9,
            child: PageView.builder(
              physics: const ClampingScrollPhysics(),
              controller: _pageController,
              itemCount: promoCarousel.length,
              itemBuilder: (context, index) {
                return carouselView(index);
              },
            ),
          )
        ],
      ),
    );
  }

  Widget carouselView(int index) {
    return AnimatedBuilder(
      animation: _pageController,
      builder: (context, child) {
        double value = 0.0;
        if (_pageController.position.haveDimensions) {
          value = index.toDouble() - (_pageController.page ?? 0);
          value = (value * 0.038).clamp(-1, 1);
        }
        return Transform.rotate(
            angle: pi * value, child: carouselCard(promoCarousel[index]));
      },
    );
  }

  Widget carouselCard(DataModel data) {
    return Column(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              decoration: BoxDecoration(
                color: Styles.white,
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: AssetImage(data.image),
                  fit: BoxFit.cover,
                ),
                boxShadow: const [
                  BoxShadow(
                      offset: Offset(0, 4),
                      blurRadius: 4,
                      color: Colors.black26)
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
