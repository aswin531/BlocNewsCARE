// ignore_for_file: non_constant_identifier_names

import 'package:newsapp/features/dailynews/domain/entities/article.dart';

class ArticleModel extends ArticleEntity {
  const ArticleModel({
    int? id,
    String? author,
    String? title,
    String? description,
    String? url,
    String? urlToImage,
    String? PublishedAt,
    String? content,
  });

  factory ArticleModel.fromJson(Map<String, dynamic> json) {
    return ArticleModel(
      id: json["id"] ?? "",
      author: json["author"] ?? "",
      title: json["title"] ?? "",
      description: json["description"] ?? "",
      url: json["url"] ?? "",
      urlToImage: json["urlToImage"] ?? "",
      PublishedAt: json["PublishedAt"] ?? "",
      content: json["     "] ?? "",
    );
  }
}
