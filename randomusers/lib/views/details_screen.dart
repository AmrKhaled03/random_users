import 'package:flutter/material.dart';
import 'package:get/get.dart'; // Use this import instead
import 'package:randomusers/constants/extensions.dart';
import 'package:randomusers/constants/strings.dart';
import 'package:randomusers/controllers/details_controller.dart';

class DetailsScreen extends GetWidget<DetailsController> {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor:
            controller.user.gender == "male" ? Colors.black : Colors.orange,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Text(
            AppStrings.appTitle,
            style: TextStyle(
                fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          backgroundColor: Colors.deepPurple,
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Hero(
                    tag: controller.user.email,
                    child: CircleAvatar(
                      radius: 100,
                      backgroundImage:
                          NetworkImage(controller.user.picture.large),
                    ),
                  ),
                  20.gap,
                  Text(
                    controller.user.login.username,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                  20.gap,
                  Text(
                    controller.user.login.password.toString(),
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  20.gap,
                  Text(
                    controller.user.registered.date,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  20.gap,
                  Text(
                    controller.user.registered.age.toString(),
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  20.gap,
                  TextButton(
                      style: const ButtonStyle(
                          backgroundColor:
                              WidgetStatePropertyAll(Colors.deepPurple)),
                      onPressed: () {
                        Get.back();
                      },
                      child: const Text(
                        "Return Back ",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.normal),
                      ))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
