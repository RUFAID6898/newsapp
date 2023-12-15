import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Newsdetailwidget extends StatelessWidget {
  String image;
  String title;

  Newsdetailwidget({
    required this.image,
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(children: [
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(image), fit: BoxFit.cover),
              color: Colors.amber,
              borderRadius: BorderRadius.circular(20)),
          height: 200,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            title,
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
          ),
        )
      ]),
    );
  }
}
