import 'package:flutter/material.dart';
import 'package:travel_app/views/widgets/list_view_widgets/explore_body_widget.dart';
import 'package:travel_app/views/widgets/text_widgets/heading1_widget.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Heading1Widget(text: 'Explore',),
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: ExploreBodyWidget(),
    );
  }
}
