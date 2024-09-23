import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:randomusers/constants/extensions.dart';
import 'package:randomusers/constants/strings.dart';
import 'package:randomusers/controllers/splash_controller.dart';

class SplashScreen extends GetWidget<SplashController> {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CircleAvatar(
                  backgroundColor: Colors.deepPurple,
                  radius: 100,
                  child: Icon(
                    Icons.person,
                    size: 100,
                    color: Colors.white,
                  ),
                ),
                20.gap,
                const Text(
                  AppStrings.appTitle,
                  style: TextStyle(
                      color: Colors.deepPurple,
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                ),
                20.gap,
              ],
            ),
          ),
        ),
      ),
      bottomSheet: const Padding(
        padding: EdgeInsets.all(20.0),
        child: CircularProgressIndicator(color: Colors.deepPurple),
      ),
    ));
  }
}
