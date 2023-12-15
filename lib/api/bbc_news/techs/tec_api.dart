class TechApi {
  String title;
  String posterpath;
  String discription;
  String content;
  TechApi({
    required this.content,
    required this.discription,
    required this.posterpath,
    required this.title,
  });

  factory TechApi.fromJson(Map<String, dynamic> json) {
    return TechApi(
        content: json["content"],
        discription: json["description"],
        posterpath: json["urlToImage"].toString(),
        title: json["title"]);
  }
}
