import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:randomusers/constants/strings.dart';
import 'package:randomusers/controllers/home_controller.dart';
import 'package:randomusers/models/user/users_model.dart';

class HomeScreen extends GetWidget<HomeController> {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: const Text(
          AppStrings.appTitle,
          style: TextStyle(
              fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        backgroundColor: Colors.deepPurple,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              controller.users.isEmpty
                  ? Container(
                      alignment: Alignment.center,
                      width: double.infinity,
                      decoration: const BoxDecoration(color: Colors.deepPurple),
                      height: 200,
                      child: const Text(
                        "No Users Found",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  : ListView.separated(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: (_, index) {
                        UsersModel user = controller.users[index];

                        return ListTile(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25)),
                          tileColor: user.gender == "male"
                              ? Colors.black
                              : Colors.orange,
                          leading: Hero(
                            tag: user.email,
                            child: CircleAvatar(
                              radius: 30,
                              backgroundImage: NetworkImage(
                                user.picture.large,
                              ),
                            ),
                          ),
                          title: Text(
                            '${user.name.title} / ${user.name.first} ${user.name.last}',
                            style: const TextStyle(
                                color: Colors.white, fontSize: 25),
                          ),
                          subtitle: Text(
                            user.email.toLowerCase(),
                            style:
                                TextStyle(color: Colors.grey.withOpacity(0.9)),
                          ),
                          trailing: InkWell(
                              onTap: () {
                                Get.toNamed(AppStrings.detailsRoute,
                                    arguments: user);
                              },
                              child: const Icon(
                                Icons.more_vert,
                                color: Colors.white,
                                size: 30,
                              )),
                        );
                      },
                      separatorBuilder: (_, __) {
                        return const SizedBox(
                          height: 10,
                        );
                      },
                      itemCount: controller.users.length)
            ],
          ),
        ),
      ),
    ));
  }
}
