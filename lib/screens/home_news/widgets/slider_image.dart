import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Sliderwidget extends StatelessWidget {
  String image;
  Sliderwidget({
    super.key,
    // required this.tec,
    required this.image,
  });

  // final List<TechApi> tec;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(image), fit: BoxFit.cover),
                color: Colors.amber,
                borderRadius: BorderRadius.circular(20)),
            height: 200,
          ),
        ],
      ),
    );
  }
}
