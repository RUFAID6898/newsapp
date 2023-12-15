import 'package:flutter/material.dart';
// import 'package:new_app/api/bbc_news/business/business.dart';

// ignore: must_be_immutable
class NewsimageWidget extends StatelessWidget {
  String image;
  NewsimageWidget({
    super.key,
    required this.image,
  });

  // final BusinessApi getnews;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(30), bottomRight: Radius.circular(30)),
      child: Container(
        decoration: BoxDecoration(
            image:
                DecorationImage(image: NetworkImage(image), fit: BoxFit.cover)),
        // color: Colors.amber,
      ),
    );
  }
}
