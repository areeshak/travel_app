import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '/entities/locations.dart';

class LocationDetailsScreen extends StatefulWidget {
  final Locations location;
  const LocationDetailsScreen({Key? key, required this.location})
      : super(key: key);

  @override
  State<LocationDetailsScreen> createState() => _LocationDetailsScreenState();
}

class _LocationDetailsScreenState extends State<LocationDetailsScreen> {
  final List<Color> _colors = [
    const Color(0xff48ACF0),
    const Color(0xff63BDE1),
    const Color(0xff7ECED1),
    const Color(0xff99DFC2),
    const Color(0xffB3EFB2),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        centerTitle: true,
        title: Text(
          widget.location.name,
          style: const TextStyle(
            fontSize: 35,
            fontWeight: FontWeight.bold,
          ),
        ),
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
                  autoPlayAnimationDuration: const Duration(milliseconds: 800),
                  viewportFraction: 0.8,
                ),
              ),
              const SizedBox(
                height: 30.0,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 20.0,
                  right: 20.0,
                ),
                child: Text(
                  widget.location.description,
                  style: GoogleFonts.openSans(
                      fontSize: 20, fontWeight: FontWeight.w400),
                ),
              ),
              const SizedBox(
                height: 15.0,
              ),
              Text(
                'Itinerary',
                style: GoogleFonts.nunito(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: ListView.separated(
                    //physics: const AlwaysScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (context, index) => ListTile(
                          contentPadding: const EdgeInsets.all(10.0),
                          tileColor: _colors[index % _colors.length],
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          title: Text(widget.location.itinerary[index], style: GoogleFonts.roboto(fontSize: 19),),
                        ),
                    separatorBuilder: (context, index) =>
                        const Padding(padding: EdgeInsets.all(2.0)),
                    itemCount: widget.location.itinerary.length),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
