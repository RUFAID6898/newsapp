import 'package:flutter/material.dart';
import 'package:new_app/api/bbc_news/business/business.dart';
import 'package:new_app/api/bbc_news/business/business_api.dart';
// import 'package:new_app/api/bbc_news/news_api.dart';
// import 'package:new_app/api/bbc_news/newspiss.dart';
// import 'package:new_app/api/bbc_news/techs/tec.dart';
// import 'package:new_app/api/bbc_news/techs/tec_api.dart';
import 'package:new_app/screens/business_news/new_details.dart';
// import 'package:new_app/screens/bbc_news/screen_bbc.dart';
import 'package:new_app/widgets/news_details_widgets.dart';

class BusineesIndestries extends StatefulWidget {
  const BusineesIndestries({super.key});

  @override
  State<BusineesIndestries> createState() => _BusineesIndestriesState();
}

class _BusineesIndestriesState extends State<BusineesIndestries> {
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
          return Column(
              children: List.generate(
                  snapshot.data!.length,
                  (index) => InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => BusinessNwsDetails(
                                    getnews: snapshot.data![index]),
                              ));
                        },
                        child: Newsdetailwidget(
                            image: "${snapshot.data![index].posterpath}",
                            title: snapshot.data![index].title),
                      )));
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
