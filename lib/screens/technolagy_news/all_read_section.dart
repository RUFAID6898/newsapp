import 'package:flutter/material.dart';
import 'package:new_app/api/bbc_news/techs/tec.dart';
import 'package:new_app/api/bbc_news/techs/tec_api.dart';
import 'package:new_app/news_reading_section_widgets/news_content.dart';
// import 'package:new_app/screens/home_news/widgets/title_widget.dart';
import 'package:new_app/widgets/all_news_read_section.dart';

class AllTecNewsReadSection extends StatefulWidget {
  // TechApi tecs;
  AllTecNewsReadSection({
    super.key,
    //  required this.tecs
  });

  @override
  State<AllTecNewsReadSection> createState() => _AllTecNewsReadSectionState();
}

class _AllTecNewsReadSectionState extends State<AllTecNewsReadSection> {
  late Future<List<TechApi>> getAllnews;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getAllnews = Techs().getapi();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: FutureBuilder(
            future: getAllnews,
            builder: (context, snapshot) {
              return PageView.builder(
                // scrollBehavior: ScrollBehavior(
                //     androidOverscrollIndicator:
                //         AndroidOverscrollIndicator.stretch),
                scrollDirection: Axis.vertical,
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  } else if (snapshot.hasData && snapshot.data != null) {
                    return SingleChildScrollView(
                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AllNewsReadSectionWidget(
                            image: snapshot.data![index].posterpath,
                          ),
                          NewsContentWidgets(
                              title: snapshot.data![index].title,
                              discription: snapshot.data![index].discription)
                        ],
                      ),
                    );
                  } else if (snapshot.hasError) {
                    return Text(snapshot.error.toString());
                  } else {
                    return Text('No Dta');
                  }
                },
              );
            }),
      ),
    );
  }
}
