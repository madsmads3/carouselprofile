import 'package:carouselprofile/background/backgroundlines.dart';
import 'package:carouselprofile/pages/homepage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class getHome extends StatefulWidget {
  const getHome({Key? key}) : super(key: key);

  @override
  State<getHome> createState() => _getHomeState();
}

class _getHomeState extends State<getHome> {
  Widget menu = Container();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF0F4FF),
      extendBodyBehindAppBar: true,
      body: ListView(
        children: [
          Stack(
            children: [
              BackgroundLines(),
              Container(
                //padding: EdgeInsets.symmetric(horizontal: 100),
                child: Stack(
                  children: [
                    Positioned(
                      child: IconButton(
                        //hoverElevation: 0,
                        //elevation: 0,
                        //backgroundColor: Colors.transparent,
                        onPressed: () {
                          onMenuClicked();
                        },
                        icon: Icon(
                          Icons.menu,
                          color: Colors.black,
                        ),
                      ),
                      top: 22,
                      right: 25,
                    ),
                    Column(
                      children: [
                        //SizedBox(height: 50),
                        //top(),
                        SizedBox(height: 50),
                        homePage(),
                      ],
                    ),
                    Positioned(
                      child: menu,
                      top: 25,
                      right: 22,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  void onMenuClicked() {
    return setState(() {
      menu = Container(
        margin: EdgeInsets.only(right: 8),
        //sheight: 250,
        width: 150,
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(16),
          color: Color(0xFFF0F4FF),
          border: Border.all(
            color: Colors.red.withOpacity(0.9),
            width: 0.25,
            style: BorderStyle.solid,
          ),
        ),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: IconButton(
                  onPressed: () {
                    setState(() {
                      menu = Container();
                    });
                  },
                  icon: Icon(Icons.close)),
            ),
            TextButton(
              onPressed: () => Get.toNamed("home"),
              style: TextButton.styleFrom(
                padding: EdgeInsets.zero,
                primary: Colors.red.withOpacity(0.675),
                //minimumSize: Size(50, 30),
              ),
              child: Text(
                "Home",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            TextButton(
              onPressed: () => Get.toNamed("project"),
              style: TextButton.styleFrom(
                padding: EdgeInsets.zero,
                primary: Colors.red.withOpacity(0.675),
                //minimumSize: Size(50, 30),
              ),
              child: Text(
                "Projects",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            TextButton(
              onPressed: () => Get.toNamed("experience"),
              style: TextButton.styleFrom(
                padding: EdgeInsets.zero,
                primary: Colors.red.withOpacity(0.675),
                //minimumSize: Size(50, 30),
              ),
              child: Text(
                "Experience",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            TextButton(
              onPressed: () => Get.toNamed("contact"),
              style: TextButton.styleFrom(
                padding: EdgeInsets.zero,
                primary: Colors.red.withOpacity(0.675),
                //minimumSize: Size(50, 30),
              ),
              child: Text(
                "Contact",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(height: 25),
          ],
        ),
      );
    });
  }
}
