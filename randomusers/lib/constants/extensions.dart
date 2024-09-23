import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

extension NumberExtension on num {
  SizedBox get gap => SizedBox(
        height: toDouble(),
        width: toDouble(),
      );
}

extension StringExtension on String {
  Future<bool?> get showToast => Fluttertoast.showToast(
        msg: this,
        fontSize: 16,
        textColor: Colors.white,
        backgroundColor: Colors.red,
      );
}
