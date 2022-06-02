import 'package:flutter/material.dart';
import '../widgets/text_widgets/text_all.dart';
import '../widgets/carousel_slider_widget.dart';
import '../widgets/list_view_widgets/location_details_body_widget.dart';
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
      appBar:AppBar(
        centerTitle: true,
        title: Heading2Widget(text: widget.location.name),
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              const SizedBox(
                height: 15.0,
              ),
              CarouselSliderWidget(imageLink: widget.location.imageLink),
              const SizedBox(
                height: 30.0,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 20.0,
                  right: 20.0,
                ),
                child: BodyText1Widget(text: widget.location.description),
              ),
              const SizedBox(
                height: 15.0,
              ),
              const Heading3Widget(text: 'Itinerary'),
              const SizedBox(
                height: 10.0,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: LocationDetailsBodyWidget(itinerary: widget.location.itinerary),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
