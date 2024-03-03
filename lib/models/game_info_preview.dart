class GameInfoPreview {
  String name;
  String cover;

  GameInfoPreview({required this.name, required this.cover});

    factory GameInfoPreview.fromJson(Map<String, dynamic> json) {
    String cover = json.containsKey('cover') && json['cover'] != null
        ? 'https:${json['cover']['url']}'
        : 'https://media.istockphoto.com/id/1055079680/vector/black-linear-photo-camera-like-no-image-available.jpg?s=612x612&w=0&k=20&c=P1DebpeMIAtXj_ZbVsKVvg-duuL0v9DlrOZUvPG6UJk=';

    return GameInfoPreview(
      name: json['name'] as String,
      cover: cover,
    );
  }
}
