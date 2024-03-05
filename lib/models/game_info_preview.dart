class GameInfoPreview {
  int id;
  String name;
  String cover;
  String? summary;
  int? firstReleaseDate;
  List<String>? genres;
  List<String>? platforms;
  int? totalRating;

  GameInfoPreview({
    required this.id,
    required this.name, 
    required this.cover, 
    this.summary,
    this.firstReleaseDate,
    this.genres,
    this.platforms,
    this.totalRating
  });

  factory GameInfoPreview.fromJson(Map<String, dynamic> json) {
    String cover = json.containsKey('cover') && json['cover'] != null
        ? 'https:${json['cover']['url']}'
        : 'https://media.istockphoto.com/id/1055079680/vector/black-linear-photo-camera-like-no-image-available.jpg?s=612x612&w=0&k=20&c=P1DebpeMIAtXj_ZbVsKVvg-duuL0v9DlrOZUvPG6UJk=';

    return GameInfoPreview(
      id: json['id'] as int,
      name: json['name'] as String,
      cover: cover,
      summary: json.containsKey('summary') ? json['summary'] as String : null,
      firstReleaseDate: json.containsKey('first_release_date') ? json['first_release_date'] as int : null,
      genres: json.containsKey('genres') ? (json['genres'] as List).map((e) => e['name'].toString()).toList() : null,
      platforms: json.containsKey('platforms') ? (json['platforms'] as List).map((e) => e['name'].toString()).toList() : null,
      totalRating: json.containsKey('total_rating') ? json['total_rating'] as int : null,
    );
  }
}
