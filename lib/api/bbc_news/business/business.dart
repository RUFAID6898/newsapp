class BusinessApi {
  String title;
  String posterpath;
  String discription;
  String content;
  BusinessApi({
    required this.content,
    required this.discription,
    required this.posterpath,
    required this.title,
  });

  factory BusinessApi.fromJson(Map<String, dynamic> json) {
    return BusinessApi(
        content: json["content"],
        discription: json["description"],
        posterpath: json["urlToImage"].toString(),
        title: json["title"]);
  }
}
