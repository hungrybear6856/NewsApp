class ArticlesModel {
  final String? image;
  final String? title;
  final String? subtitle;
  final String? url;

  ArticlesModel(
      {required this.image,
      required this.title,
      required this.subtitle,
      required this.url});
/*
  factory ArticaleModel.fromJson(Map<String, dynamic> json) {
    return ArticaleModel(
      title: json['title'] ?? '',
      image: json['url'] ?? '',
      subtitle: json['author'] ?? '',
    );
  }
  */
}
