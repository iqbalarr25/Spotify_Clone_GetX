import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'controller/binding.dart';
import 'view/pages/pages.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialBinding: SpotifyBinding(),
      home: const LoginPage(),
    );
  }
}
