import 'package:flutter/material.dart';
import '../text_widgets/bodyText2_widget.dart';

class LocationDetailsBodyWidget extends StatelessWidget {
  final List<String> itinerary;
  LocationDetailsBodyWidget({Key? key, required this.itinerary}) : super(key: key);

  final List<Color> _colors = [
    const Color(0xff48ACF0),
    const Color(0xff63BDE1),
    const Color(0xff7ECED1),
    const Color(0xff99DFC2),
    const Color(0xffB3EFB2),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      //physics: const AlwaysScrollableScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (context, index) => ListTile(
          contentPadding: const EdgeInsets.all(10.0),
          tileColor: _colors[index % _colors.length],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          title: BodyText2Widget(text: itinerary[index]),
        ),
        separatorBuilder: (context, index) =>
        const Padding(padding: EdgeInsets.all(4.0)),
        itemCount: itinerary.length
    );
  }
}
