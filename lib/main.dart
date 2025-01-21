import 'package:aspen/featuers/splash/presentation/views/splah_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(const AspenApp());
}

class AspenApp extends StatelessWidget {
  const AspenApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplahView(),
    );
  }
}
