import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:randomusers/constants/strings.dart';
import 'package:randomusers/utils/app_bindings.dart';
import 'package:randomusers/views/details_screen.dart';
import 'package:randomusers/views/home_screen.dart';
import 'package:randomusers/views/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: AppStrings.appTitle,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      getPages: [
        GetPage(name: AppStrings.splashRoute, page: () => const SplashScreen()),
        GetPage(name: AppStrings.homeRoute, page: () => const HomeScreen()),
        GetPage(
            name: AppStrings.detailsRoute, page: () => const DetailsScreen()),
      ],
      initialRoute: AppStrings.splashRoute,
      initialBinding: AppBindings(),
    );
  }
}
