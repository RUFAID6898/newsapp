import 'package:flutter/material.dart';
// import 'package:new_app/api/bbc_news/news_api.dart';
// import 'package:new_app/api/bbc_news/newspiss.dart';
import 'package:new_app/screens/bbc_news/all_news_readind_section.dart';
import 'package:new_app/screens/bbc_news/widget/bbc_news.dart';
import 'package:new_app/screens/home_news/news_sliders/bbc_slider.dart';
import 'package:new_app/screens/home_news/widgets/button_widget.dart';
import 'package:new_app/screens/home_news/widgets/title_widget.dart';
// import 'package:new_app/widgets/news_details_widgets.dart';

class ScreenNews extends StatelessWidget {
  const ScreenNews({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        TitleWidget(title: 'BBC News'),
        LimitedBox(maxHeight: 170, child: NewsBbcSliderWidget()),
        ButtonWidget(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AllBbcNewsReadSection(),
                  ));
            },
            title: 'Read All BBC News'),
        BbcNewsWidget(),
      ],
    );
  }
}
