import 'package:carouselprofile/get/getcontact.dart';
import 'package:carouselprofile/get/getexperience.dart';
import 'package:carouselprofile/get/gethome.dart';
import 'package:carouselprofile/get/getprojects.dart';
import 'package:carouselprofile/pages/homepage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      home: getHome(),
      getPages: [
        GetPage(name: '/home', page: () => getHome()),
        GetPage(name: '/project', page: () => getProjects()),
        GetPage(name: '/experience', page: () => getExperience()),
        GetPage(name: '/contact', page: () => getContact()),
      ],
    );
  }
}

/*
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Widget menu = Container();
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
*/