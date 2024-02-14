// To parse this JSON data, do
//
//     final localVideoModel = localVideoModelFromJson(jsonString);

// import 'dart:convert';

// LocalVideoModel localVideoModelFromJson(String str) => LocalVideoModel.fromJson(json.decode(str));

// String localVideoModelToJson(LocalVideoModel data) => json.encode(data.toJson());

import 'package:toktik_app/domain/entities/video_post.dart';

class LocalVideoModel {
  final String name;
  final String videoUrl;
  final int likes;
  final int views;

  LocalVideoModel({
    required this.name,
    required this.videoUrl,
    this.likes = 0,
    this.views = 0,
  });

// Esto es para que cuando tenga una respuesta http creo una instancia de una clase
  factory LocalVideoModel.fromJson(Map<String, dynamic> json) =>
      LocalVideoModel(
        name: json["name"] ?? 'No name',
        videoUrl: json["videoUrl"],
        likes: json["likes"] ?? 0,
        views: json["views"] ?? 0,
      );

  // Map<String, dynamic> toJson() => {
  //     "name": name,
  //     "videoUrl": videoUrl,
  //     "likes": likes,
  //     "views": views,
  // };

  VideoPost toVideoPostEntity() =>
      VideoPost(caption: name, videoUrl: videoUrl, likes: likes, views: views);
}
