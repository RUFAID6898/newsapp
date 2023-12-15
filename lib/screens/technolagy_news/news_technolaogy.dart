import 'package:flutter/material.dart';
// import 'package:new_app/api/bbc_news/news_api.dart';
// import 'package:new_app/api/bbc_news/newspiss.dart';
import 'package:new_app/api/bbc_news/techs/tec.dart';
import 'package:new_app/api/bbc_news/techs/tec_api.dart';
import 'package:new_app/screens/technolagy_news/tec_news_details.dart';
// import 'package:new_app/screens/bbc_news/screen_bbc.dart';
import 'package:new_app/widgets/news_details_widgets.dart';

class NewsTecnolagy extends StatefulWidget {
  const NewsTecnolagy({super.key});

  @override
  State<NewsTecnolagy> createState() => _NewsTecnolagyState();
}

class _NewsTecnolagyState extends State<NewsTecnolagy> {
  late Future<List<TechApi>> gey;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    gey = Techs().getapi();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: gey,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(
            child: CircularProgressIndicator(),
          );
        } else if (snapshot.hasData && snapshot.data != null) {
          // final data = snapshot.data;
          return Column(
              children: List.generate(
                  snapshot.data!.length,
                  (index) => InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => TechNewsDetails(
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
          return Center(child: Text('No Data '));
        }
      },
    );
  }
}
