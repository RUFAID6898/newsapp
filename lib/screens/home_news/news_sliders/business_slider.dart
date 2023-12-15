import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:new_app/api/bbc_news/business/business.dart';
import 'package:new_app/api/bbc_news/business/business_api.dart';
// import 'package:new_app/screens/bbc_news/news_deatails.dart';
import 'package:new_app/screens/business_news/new_details.dart';
import 'package:new_app/screens/home_news/widgets/slider_discription_widget.dart';
import 'package:new_app/screens/home_news/widgets/slider_image.dart';
// import 'package:new_app/widgets/news_details_widgets.dart';

class BusinessSliderWidget extends StatefulWidget {
  const BusinessSliderWidget({super.key});

  @override
  State<BusinessSliderWidget> createState() => BusinessSliderWidgetState();
}

class BusinessSliderWidgetState extends State<BusinessSliderWidget> {
  late Future<List<BusinessApi>> gey;
  @override
  void initState() {
    super.initState();
    gey = BusinessGetApi().getapi();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: gey,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          // final data = snapshot.data;
          return CarouselSlider.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index, realIndex) {
                return InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => BusinessNwsDetails(
                                getnews: snapshot.data![index]),
                          ));
                    },
                    child: Stack(
                      children: [
                        Sliderwidget(image: snapshot.data![index].posterpath),
                        Positioned(
                          bottom: 1,
                          left: 7,
                          child: SliderDiscriptionWidget(
                              title: snapshot.data![index].title),
                        )
                      ],
                    ));
              },
              options: CarouselOptions(autoPlay: true));
        } else if (snapshot.hasError) {
          return Text(snapshot.error.toString());
        } else {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
