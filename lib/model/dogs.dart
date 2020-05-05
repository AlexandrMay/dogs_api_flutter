class Dogs {
  final String name;
  final String origin;
  final String temperament;
  final String urlToImage;

  Dogs({this.name, this.origin, this.temperament, this.urlToImage});

  factory Dogs.fromJSON(Map<String, dynamic> json) {
    return Dogs(
        name: json["name"],
        origin: json["origin"],
        temperament: json["temperament"],
        urlToImage: json["url"]
    );
  }


}