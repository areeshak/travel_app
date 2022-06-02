import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class CarouselSliderWidget extends StatelessWidget {
  final List<String> imageLink;
  const CarouselSliderWidget({Key? key, required this.imageLink}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: imageLink
          .map(
            (e) => Container(
          margin: const EdgeInsets.all(5.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            image: DecorationImage(
              image: AssetImage('images/${e.toString()}'),
              fit: BoxFit.cover,
            ),
          ),
        ),
      )
          .toList(),
      options: CarouselOptions(
        height: 180,
        enlargeCenterPage: true,
        autoPlay: true,
        aspectRatio: 16 / 9,
        autoPlayCurve: Curves.fastOutSlowIn,
        enableInfiniteScroll: true,
        autoPlayAnimationDuration: const Duration(milliseconds: 800),
        viewportFraction: 0.8,
      ),
    );
  }
}
