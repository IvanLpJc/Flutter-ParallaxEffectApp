class VideoFile {
  int id;
  String quality;
  String fileType;
  int? width;
  int? height;
  String link;

  VideoFile({
    required this.id,
    required this.quality,
    required this.fileType,
    required this.width,
    required this.height,
    required this.link,
  });

  factory VideoFile.fromJson(Map<String, dynamic> json) => VideoFile(
        id: json["id"],
        quality: json["quality"],
        fileType: json["file_type"],
        width: json["width"],
        height: json["height"],
        link: json["link"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "quality": quality,
        "file_type": fileType,
        "width": width,
        "height": height,
        "link": link,
      };
}
