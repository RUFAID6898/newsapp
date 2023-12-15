class NewsBbcApi {
  String poster;
  String title;
  String description;
  String content;

  NewsBbcApi({
    required this.content,
    required this.description,
    required this.poster,
    required this.title,
  });

  factory NewsBbcApi.fromJson(Map<String, dynamic> json) {
    return NewsBbcApi(
        content: json["content"],
        description: json["description"],
        poster: json["urlToImage"],
        title: json["title"]);
  }
}
