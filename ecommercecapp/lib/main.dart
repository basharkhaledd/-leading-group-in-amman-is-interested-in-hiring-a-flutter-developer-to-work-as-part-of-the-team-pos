import 'package:ecommercecapp/view/screen/onboarding.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
       theme: ThemeData().copyWith(
          textTheme:
              GoogleFonts.dangrekTextTheme(Theme.of(context).textTheme).apply(
        bodyColor: Colors.black,
        displayColor: Colors.black,
      )),
      home: const OnBoarding(),
    );
  }
}


