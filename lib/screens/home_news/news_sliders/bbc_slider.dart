import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:new_app/api/bbc_news/news_api.dart';
import 'package:new_app/api/bbc_news/newspiss.dart';
import 'package:new_app/screens/bbc_news/news_deatails.dart';
import 'package:new_app/screens/home_news/widgets/slider_discription_widget.dart';
import 'package:new_app/screens/home_news/widgets/slider_image.dart';

class NewsBbcSliderWidget extends StatefulWidget {
  // int index;
  NewsBbcSliderWidget({
    // required this.index,
    super.key,
  });

  @override
  State<NewsBbcSliderWidget> createState() => _NewwidgetState();
}

class _NewwidgetState extends State<NewsBbcSliderWidget> {
  late Future<List<NewsBbcApi>> getithems;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getithems = ModelNewsApi().getnewses();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: getithems,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return CarouselSlider.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index, realIndex) {
                  return InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => BbcNewsDeatails(
                                  getnews: snapshot.data![index]),
                            ));
                      },
                      child: Stack(
                        children: [
                          Sliderwidget(image: snapshot.data![index].poster),
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
        });
  }
}
