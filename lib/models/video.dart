// To parse this JSON data, do
//
//     final video = videoFromJson(jsonString);

import 'dart:convert';

import 'package:parallax_effect/models/user.dart';
import 'package:parallax_effect/models/video_file.dart';
import 'package:parallax_effect/models/video_picture.dart';

Video videoFromJson(String str) => Video.fromJson(json.decode(str));

String videoToJson(Video data) => json.encode(data.toJson());

class Video {
  int id;
  int width;
  int height;
  String url;
  String image;
  int duration;
  User user;
  List<VideoFile> videoFiles;
  List<VideoPicture> videoPictures;

  Video({
    required this.id,
    required this.width,
    required this.height,
    required this.url,
    required this.image,
    required this.duration,
    required this.user,
    required this.videoFiles,
    required this.videoPictures,
  });

  factory Video.fromJson(Map<String, dynamic> json) => Video(
        id: json["id"],
        width: json["width"],
        height: json["height"],
        url: json["url"],
        image: json["image"],
        duration: json["duration"],
        user: User.fromJson(json["user"]),
        videoFiles: List<VideoFile>.from(
            json["video_files"].map((x) => VideoFile.fromJson(x))),
        videoPictures: List<VideoPicture>.from(
            json["video_pictures"].map((x) => VideoPicture.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "width": width,
        "height": height,
        "url": url,
        "image": image,
        "duration": duration,
        "user": user.toJson(),
        "video_files": List<dynamic>.from(videoFiles.map((x) => x.toJson())),
        "video_pictures":
            List<dynamic>.from(videoPictures.map((x) => x.toJson())),
      };
}
