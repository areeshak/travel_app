import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import '/entities/locations.dart';

class LocationDetailsScreen extends StatefulWidget {
  final Locations location;
  const LocationDetailsScreen({Key? key, required this.location})
      : super(key: key);

  @override
  State<LocationDetailsScreen> createState() => _LocationDetailsScreenState();
}

class _LocationDetailsScreenState extends State<LocationDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.location.name),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            const SizedBox(
              height: 15.0,
            ),
            CarouselSlider(
              items: widget.location.imageLink
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
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                viewportFraction: 0.8,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
