import 'package:flutter/material.dart';
import 'package:new_app/api/bbc_news/news_api.dart';
import 'package:new_app/api/bbc_news/newspiss.dart';
// import 'package:new_app/api/bbc_news/techs/tec.dart';
// import 'package:new_app/api/bbc_news/techs/tec_api.dart';
import 'package:new_app/news_reading_section_widgets/news_content.dart';
// import 'package:new_app/screens/home_news/widgets/title_widget.dart';
import 'package:new_app/widgets/all_news_read_section.dart';

class AllBbcNewsReadSection extends StatefulWidget {
  // TechApi tecs;
  AllBbcNewsReadSection({
    super.key,
    //  required this.tecs
  });

  @override
  State<AllBbcNewsReadSection> createState() => _AllBbcNewsReadSectionState();
}

class _AllBbcNewsReadSectionState extends State<AllBbcNewsReadSection> {
  late Future<List<NewsBbcApi>> getAllnews;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getAllnews = ModelNewsApi().getnewses();
  }

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: FutureBuilder(
          future: getAllnews,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(
                child: CircularProgressIndicator(),
              );
            } else if (snapshot.hasError) {
              return Center(
                child: Text(snapshot.error.toString()),
              );
            } else if (snapshot.hasData && snapshot.data != null) {
              return PageView.builder(
                scrollDirection: Axis.vertical,
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index) {
                  return SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AllNewsReadSectionWidget(
                          image: snapshot.data![index].poster,
                        ),
                        NewsContentWidgets(
                          title: snapshot.data![index].title,
                          discription: snapshot.data![index].description,
                        ),
                      ],
                    ),
                  );
                },
              );
            } else {
              return Center(
                child: Text("No data available"),
              );
            }
          },
        ),
      ),
    );
  }
}
