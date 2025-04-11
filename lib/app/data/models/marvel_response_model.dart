class MarvelResponse {
  final List<HeroModel> results;

  MarvelResponse({required this.results});

  factory MarvelResponse.fromJson(Map<String, dynamic> json) {
    return MarvelResponse(
      results: List<HeroModel>.from(
        json['data']['results'].map((x) => HeroModel.fromJson(x)),
      ),
    );
  }
}

class HeroModel {
  final int id;
  final String name;
  final String description;
  final String thumbnailUrl;

  HeroModel({
    required this.id,
    required this.name,
    required this.description,
    required this.thumbnailUrl,
  });

  factory HeroModel.fromJson(Map<String, dynamic> json) {
    return HeroModel(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      thumbnailUrl: "${json['thumbnail']['path']}.${json['thumbnail']['extension']}",
    );
  }
}
