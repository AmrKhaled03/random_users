import 'package:randomusers/models/user/coordinates_model.dart';
import 'package:randomusers/models/user/street_model.dart';
import 'package:randomusers/models/user/timezone_model.dart';

class LocationModel {
  final String city;
  final String state;
  final String country;
  final dynamic postcode;
  final StreetModel street;
  final CoordinatesModel coordinates;
  final TimezoneModel timezone;
  LocationModel(
      {required this.city,
      required this.state,
      required this.country,
      required this.postcode,
      required this.street,
      required this.coordinates,
      required this.timezone});
  factory LocationModel.fromJson(Map<String, dynamic> json) {
    return LocationModel(
        city: json['city'],
        state: json['state'],
        country: json['country'],
        postcode: json['postcode'] ,
        street:StreetModel.fromJson(json['street']),
        coordinates: CoordinatesModel.fromJson(json['coordinates']),
        timezone: TimezoneModel.fromJson(json['timezone'])) ;
  }
}
