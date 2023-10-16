class VideoPicture {
  int id;
  String picture;
  int nr;

  VideoPicture({
    required this.id,
    required this.picture,
    required this.nr,
  });

  factory VideoPicture.fromJson(Map<String, dynamic> json) => VideoPicture(
        id: json["id"],
        picture: json["picture"],
        nr: json["nr"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "picture": picture,
        "nr": nr,
      };
}
