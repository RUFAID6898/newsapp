import 'package:flutter/material.dart';
import 'package:new_app/api/bbc_news/news_api.dart';
import 'package:new_app/api/bbc_news/newspiss.dart';
import 'package:new_app/screens/bbc_news/news_deatails.dart';
import 'package:new_app/widgets/news_details_widgets.dart';

class BbcNewsWidget extends StatefulWidget {
  // int index;
  BbcNewsWidget({
    // required this.index,
    super.key,
  });

  @override
  State<BbcNewsWidget> createState() => _BbcNewsWidgetState();
}

class _BbcNewsWidgetState extends State<BbcNewsWidget> {
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
            return Column(
              children: List.generate(
                  snapshot.data!.length,
                  (index) => InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => BbcNewsDeatails(
                                    getnews: snapshot.data![index]),
                              ));
                        },
                        child: Newsdetailwidget(
                          image: snapshot.data![index].poster,
                          title: snapshot.data![index].title,
                        ),
                      )),
            );
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
