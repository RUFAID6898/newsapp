import 'package:flutter/material.dart';
import 'package:new_app/screens/bbc_news/all_news_readind_section.dart';
import 'package:new_app/screens/business_news/all_news_reading_section.dart';
import 'package:new_app/screens/home_news/news_sliders/bbc_slider.dart';
import 'package:new_app/screens/home_news/news_sliders/business_slider.dart';
// import 'package:new_app/api/bbc_news/news_api.dart';
// import 'package:new_app/api/bbc_news/newspiss.dart';
// import 'package:new_app/api/bbc_news/techs/tec_api.dart';
// import 'package:new_app/datafecting.dart';
import 'package:new_app/screens/home_news/news_sliders/tec_slider.dart';
import 'package:new_app/screens/home_news/widgets/button_widget.dart';
import 'package:new_app/screens/home_news/widgets/title_widget.dart';
import 'package:new_app/screens/technolagy_news/all_read_section.dart';
// import 'package:new_app/screens/home_news/widgets/slider_image.dart';
// import 'package:provider/provider.dart';
// import 'package:carousel_slider/carousel_slider.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        TitleWidget(
          title: 'Tec Newses',
        ),
        TecNewsSlider(),
        ButtonWidget(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AllTecNewsReadSection(),
                ));
          },
          title: 'Read All Tec News',
        ),
        TitleWidget(
          title: 'BBC Newses',
        ),
        NewsBbcSliderWidget(),
        ButtonWidget(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AllBbcNewsReadSection(),
                ));
          },
          title: 'Read All BBC News',
        ),
        TitleWidget(
          title: 'Business Newses',
        ),
        BusinessSliderWidget(),
        ButtonWidget(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AllBusinessNewsReadSection(),
                ));
          },
          title: 'Read All Business News',
        ),
        SizedBox(
          height: 50,
        )
      ],
    );
  }
}
