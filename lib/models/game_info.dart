class GameInfo {
  int id;
  String name;
  String cover;
  String? summary;
  int? firstReleaseDate;
  List<String>? genres;
  List<String>? platforms;
  int? totalRating;

  GameInfo(
      {required this.id,
      required this.name,
      required this.cover,
      this.summary,
      this.firstReleaseDate,
      this.genres,
      this.platforms,
      this.totalRating});

  factory GameInfo.fromJson(Map<String, dynamic> json) {
    String cover = json.containsKey('cover') && json['cover'] != null
        ? 'https:${json['cover']['url']}'
        : 'https://tinypic.host/images/2024/03/05/output-onlinepngtools-2.png';

    return GameInfo(
      id: json['id'] as int,
      name: json['name'] as String,
      cover: cover,
      summary: json.containsKey('summary') ? json['summary'] as String : null,
      firstReleaseDate: json.containsKey('first_release_date')
          ? json['first_release_date'] as int
          : null,
      genres: json.containsKey('genres')
          ? (json['genres'] as List).map((e) => e['name'].toString()).toList()
          : null,
      platforms: json.containsKey('platforms')
          ? (json['platforms'] as List)
              .map((e) => e['name'].toString())
              .toList()
          : null,
      totalRating:
          json.containsKey('total_rating') ? json['total_rating'] as int : null,
    );
  }
}
