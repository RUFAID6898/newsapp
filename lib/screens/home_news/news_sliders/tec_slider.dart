import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
// import 'package:new_app/api/bbc_news/techs/tec_api.dart';
import 'package:new_app/datafecting.dart';
import 'package:new_app/screens/home_news/widgets/slider_discription_widget.dart';
import 'package:new_app/screens/home_news/widgets/slider_image.dart';
// import 'package:new_app/screens/home_news/widgets/title_widget.dart';
import 'package:new_app/screens/technolagy_news/tec_news_details.dart';
import 'package:provider/provider.dart';

class TecNewsSlider extends StatefulWidget {
  // int index;
  TecNewsSlider({
    // required this.index,
    super.key,
  });

  @override
  State<TecNewsSlider> createState() => TecNewsSliderState();
}

class TecNewsSliderState extends State<TecNewsSlider> {
  // late Future<List<NewsBbcApi>> getithems;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // getithems = ModelNewsApi().getnewses();
    Provider.of<TechNotifire>(context, listen: false).gettecnews();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<TechNotifire>(
      builder: (context, value, child) {
        final tec = value.tec;
        return CarouselSlider.builder(
            itemCount: tec.length,
            itemBuilder: (context, index, realIndex) {
              return InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            TechNewsDetails(getnews: tec[index]),
                      ));
                },
                child: Stack(
                  children: [
                    Sliderwidget(
                      image: tec[index].posterpath,
                    ),
                    Positioned(
                      bottom: 1,
                      left: 7,
                      child: SliderDiscriptionWidget(
                        title: tec[index].title,
                      ),
                    )
                  ],
                ),
              );
            },
            options: CarouselOptions(
              autoPlay: true,
            ));
      },
    );
  }
}
