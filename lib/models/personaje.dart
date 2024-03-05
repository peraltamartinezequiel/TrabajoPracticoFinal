class Personaje {
  int id;
  int? created_at;
  String? name;
  String? slug;
  int? updated_at;
  String url;
  String? checksum;
  Personaje(
      {required this.id,
      this.created_at,
      this.name,
      this.slug,
      this.updated_at,
      required this.url,
      this.checksum});
  factory Personaje.fromJson(Map<String, dynamic> json) => Personaje(
      id: json['id'],
      created_at: json['created_at'],
      name: json['name'],
      slug: json['slug'],
      updated_at: json['updated_at'],
      url: json['url'],
      checksum: json['checksum']);
}
