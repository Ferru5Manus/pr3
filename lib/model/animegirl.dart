class AnimeGirl {
  final String id;
  final String name;
  final String description;

  AnimeGirl({required this.id, required this.name, required this.description});

  factory AnimeGirl.fromJson(Map<String, dynamic> json) {
    return AnimeGirl(
      id: json['id'],
      name: json['name'],
      description: json['description'],
    );
  }
}