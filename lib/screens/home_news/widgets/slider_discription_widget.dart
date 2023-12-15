import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SliderDiscriptionWidget extends StatelessWidget {
  SliderDiscriptionWidget({
    super.key,
    // required this.tec,
    required this.title,
  });
  String title;
  // final List<TechApi> tec;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 70,
        width: 300,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            title,
            style: TextStyle(
                overflow: TextOverflow.fade,
                fontSize: 17,
                fontWeight: FontWeight.bold),
          ),
        ));
  }
}
