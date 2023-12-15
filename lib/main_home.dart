import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:new_app/screens/business_news/busines_indestries.dart';
import 'package:new_app/screens/business_news/screen_business.dart';
import 'package:new_app/screens/technolagy_news/news_technolaogy.dart';
// import 'package:new_app/screens/screen_business.dart';
import 'package:new_app/screens/home_news/screen_home.dart';
import 'package:new_app/screens/bbc_news/screen_bbc.dart';
import 'package:new_app/screens/technolagy_news/screen_technolaogy.dart';

class MainHomeScreem extends StatelessWidget {
  MainHomeScreem({super.key});
  // ValueNotifier bottemnotifaire = ValueNotifier(0);
  // List screens = [ScreenHome(), ScreenNews()];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "News",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          bottom: TabBar(tabs: [
            Tab(
              child: Text('home'),
            ),
            Tab(
              child: Text('BBCNews'),
            ),
            Tab(
              child: Text('Tec News'),
            ),
            Tab(
              child: Text('Bussines '),
            ),
          ]),
        ),
        body: TabBarView(children: [
          ScreenHome(),
          ScreenNews(),
          ScreenTecnolagy(),
          ScreenBusiness()
        ]),
        // body: screens[0],
        // bottomNavigationBar: GNav(
        //     selectedIndex: bottemnotifaire.value,
        //     onTabChange: (value) {
        //       bottemnotifaire.value = value;
        //     },
        //     tabMargin: EdgeInsets.all(10),
        //     tabs: [
        //       GButton(icon: Icons.home),
        //       GButton(icon: Icons.newspaper),
        //       GButton(icon: Icons.newspaper),
        //       GButton(icon: Icons.newspaper)
        //     ])
      ),
    );
  }
}
