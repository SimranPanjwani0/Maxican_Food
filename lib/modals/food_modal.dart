class Food {
  String id;
  String title;
  String difficulty;
  String image;

  Food({
    required this.id,
    required this.title,
    required this.difficulty,
    required this.image,
  });

  factory Food.fromJson(Map<String, dynamic> json) => Food(
        id: json["id"],
        title: json["title"],
        difficulty: json["difficulty"],
        image: json["image"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "difficulty": difficulty,
        "image": image,
      };
}
