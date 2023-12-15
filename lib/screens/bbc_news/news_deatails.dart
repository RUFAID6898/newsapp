import 'package:flutter/material.dart';
// import 'package:new_app/api/bbc_news/business/business.dart';
import 'package:new_app/api/bbc_news/news_api.dart';
import 'package:new_app/news_reading_section_widgets/new_images.dart';
import 'package:new_app/news_reading_section_widgets/news_content.dart';
// import 'package:new_app/screens/business_news/busines_indestries.dart';

// ignore: must_be_immutable
class BbcNewsDeatails extends StatelessWidget {
  NewsBbcApi getnews;
  BbcNewsDeatails({
    super.key,
    required this.getnews,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverAppBar.large(
          leading: Container(
            margin: EdgeInsets.only(left: 5, top: 5, bottom: 5),
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                color: Colors.grey, borderRadius: BorderRadius.circular(20)),
            child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.arrow_back_ios_sharp)),
          ),
          expandedHeight: 400,
          flexibleSpace: FlexibleSpaceBar(
            background: NewsimageWidget(
              image: getnews.poster,
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: NewsContentWidgets(
            title: getnews.title,
            discription: getnews.description,
          ),
        )
      ],
    ));
  }
}
