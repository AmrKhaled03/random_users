class PicturesModel {
  final String large;
  final String medium;
  final String thumbnail;

  PicturesModel({
    required this.large,
    required this.medium,
    required this.thumbnail,
  });
  factory PicturesModel.fromJson(Map<String, dynamic> json) {
    return PicturesModel(
        large: json['large'],
        medium: json['medium'],
        thumbnail: json['thumbnail']) ;
  }
}
