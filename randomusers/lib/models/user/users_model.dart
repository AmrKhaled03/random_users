import 'package:randomusers/models/user/dob_model.dart';
import 'package:randomusers/models/user/location_model.dart';
import 'package:randomusers/models/user/login_model.dart';
import 'package:randomusers/models/user/name_model.dart';
import 'package:randomusers/models/user/pictures_model.dart';
import 'package:randomusers/models/user/registered_model.dart';

class UsersModel {
  final String nat;
  final String cell;
  final String phone;
  final String email;
  final String gender;
  final NameModel name;
  final LocationModel location;
  final LoginModel login;
  final DobModel dob;
  final RegisteredModel registered;
  final PicturesModel picture;
  UsersModel(
      {required this.nat,
      required this.cell,
      required this.phone,
      required this.email,
      required this.gender,
      required this.name,
      required this.location,
      required this.login,
      required this.dob,
      required this.registered,
      required this.picture});
  factory UsersModel.fromJson(Map<String, dynamic> json) {
    return UsersModel(
        nat: json['nat'] ,
        cell: json['cell'],
        phone: json['phone'],
        email: json['email'],
        gender: json['gender'],
        name: NameModel.fromJson(json['name']),
        location: LocationModel.fromJson(json['location']),
        login: LoginModel.fromJson(json['login']),
        dob: DobModel.fromJson(json['dob']),
        registered: RegisteredModel.fromJson(json['registered']),
        picture: PicturesModel.fromJson(json['picture'])) ;
  }
}
