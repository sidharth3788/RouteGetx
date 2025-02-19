import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:toggle_button/core/routes/routes.dart';
import 'package:toggle_button/home/viewpage/togglebutton.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: ToggleButtonPage(),
      getPages: AppPages.pages,
    );
  }
}
