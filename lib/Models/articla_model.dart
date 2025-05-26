class ArticlaModel {
  final String? image;
  final String title;
  final String? subtitle;
  final String url;
  ArticlaModel({
    required this.image,
    required this.title,
    required this.subtitle,
    required this.url
  });
  factory ArticlaModel.fromJson(json) {
    return ArticlaModel(
      image: json['urlToImage'],
      title: json['title'],
      subtitle: json['description'],
      url: json['url']
    );
  }
}
