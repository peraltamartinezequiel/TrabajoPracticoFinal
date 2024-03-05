class Personaje {
  int id;
  int? created_at;
  List<Game> games;
  String? name;
  String? slug;
  int? updated_at;
  String url;
  String? checksum;
  Personaje(
      {required this.id,
      this.created_at,
      required this.games,
      this.name,
      this.slug,
      this.updated_at,
      required this.url,
      this.checksum});
  factory Personaje.fromJson(Map<String, dynamic> json) => Personaje(
      id: json['id'],
      created_at: json['created_at'],
      games: List<Game>.from(json['games'].map((x) => Game.fromJson(x))),
      name: json['name'],
      slug: json['slug'],
      updated_at: json['updated_at'],
      url: json['url'],
      checksum: json['checksum']);
}

class Game {
  int id;
  String name;
  Game({required this.id, required this.name});
  factory Game.fromJson(Map<String, dynamic> json) =>
      Game(id: json['id'], name: json['name']);
}
