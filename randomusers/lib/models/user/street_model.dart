class StreetModel {
  final int number;
  final String name;
  StreetModel({required this.name, required this.number});
  factory StreetModel.fromJson(Map <String,dynamic>json){
    return StreetModel(name: json['name'], number: json['number']) ;
  }
}
