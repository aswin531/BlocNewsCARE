// ignore_for_file: non_constant_identifier_names

import 'package:equatable/equatable.dart';

class ArticleEntity extends Equatable {
  final int? id;
  final String? author;
  final String? title;
  final String? description;
  final String? url;
  final String? urlToImage;
  final String? PublishedAt;
  final String? content;

  const ArticleEntity(
      {this.id,
      this.author,
      this.title,
      this.description,
      this.url,
      this.urlToImage,
      this.PublishedAt,
      this.content});

  @override
  List<Object?> get props {
    return [
      id,
      author,
      title,
      description,
      url,
      urlToImage,
      PublishedAt,
      content
    ];
  }
}
