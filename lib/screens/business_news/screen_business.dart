import 'package:flutter/material.dart';
// import 'package:new_app/api/bbc_news/news_api.dart';
// import 'package:new_app/api/bbc_news/newspiss.dart';
// import 'package:new_app/screens/bbc_news/widget/bbc_news.dart';
import 'package:new_app/screens/business_news/all_news_reading_section.dart';
import 'package:new_app/screens/business_news/busines_indestries.dart';
// import 'package:new_app/screens/home_news/news_sliders/bbc_slider.dart';
import 'package:new_app/screens/home_news/news_sliders/business_slider.dart';
import 'package:new_app/screens/home_news/widgets/button_widget.dart';
import 'package:new_app/screens/home_news/widgets/title_widget.dart';
// import 'package:new_app/widgets/news_details_widgets.dart';

class ScreenBusiness extends StatelessWidget {
  const ScreenBusiness({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        TitleWidget(title: 'Business News '),
        LimitedBox(maxHeight: 170, child: BusinessSliderWidget()),
        ButtonWidget(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AllBusinessNewsReadSection(),
                  ));
            },
            title: 'Read All Business News'),
        BusineesIndestries(),
      ],
    );
  }
}
