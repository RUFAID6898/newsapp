import 'package:flutter/material.dart';
// import 'package:new_app/api/bbc_news/business/business.dart';

// ignore: must_be_immutable
class NewsContentWidgets extends StatelessWidget {
  String title;
  String discription;

  NewsContentWidgets({
    super.key,
    required this.title,
    required this.discription,
  });

  // final BusinessApi getnews;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          ),
        ),
        Text(
          discription,
          style: TextStyle(fontWeight: FontWeight.normal, fontSize: 20),
        ),
      ],
    );
  }
}
