import 'package:flutter/material.dart';
// import 'package:new_app/api/bbc_news/news_api.dart';
// import 'package:new_app/api/bbc_news/newspiss.dart';
// import 'package:new_app/screens/bbc_news/widget/bbc_news.dart';
// import 'package:new_app/screens/business_news/busines_indestries.dart';
// import 'package:new_app/screens/home_news/news_sliders/bbc_slider.dart';
// import 'package:new_app/screens/home_news/news_sliders/business_slider.dart';
import 'package:new_app/screens/home_news/news_sliders/tec_slider.dart';
import 'package:new_app/screens/home_news/widgets/button_widget.dart';
import 'package:new_app/screens/home_news/widgets/title_widget.dart';
import 'package:new_app/screens/technolagy_news/all_read_section.dart';
import 'package:new_app/screens/technolagy_news/news_technolaogy.dart';
// import 'package:new_app/widgets/news_details_widgets.dart';

class ScreenTecnolagy extends StatelessWidget {
  const ScreenTecnolagy({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        TitleWidget(title: 'Tec News'),
        LimitedBox(maxHeight: 170, child: TecNewsSlider()),
        ButtonWidget(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AllTecNewsReadSection(),
                  ));
            },
            title: 'Read All Tec News'),
        NewsTecnolagy(),
      ],
    );
  }
}
