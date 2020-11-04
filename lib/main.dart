import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web/pages/Homepage/homepage.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/root_widget.dart';

main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "This is sample App.",
      home: HomePage(),
      getPages: [
        GetPage(name: "/", page: () => HomePage()),
      ],
    );
  }
}
