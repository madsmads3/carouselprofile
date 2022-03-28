import 'package:carouselprofile/background/experiencecard.dart';
import 'package:carouselprofile/background/size_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ms_undraw/ms_undraw.dart';

class ExperiencePage extends StatelessWidget {
  ExperiencePage({Key? key}) : super(key: key);

  final Widget flutterSVG = SvgPicture.network(
    'https://www.vectorlogo.zone/logos/flutterio/flutterio-icon.svg',
    width: 100,
    height: 100,
    //color: Color(0xFF0077b5),
    placeholderBuilder: (BuildContext context) => Container(
        padding: const EdgeInsets.all(30.0),
        child: const CircularProgressIndicator()),
  );

  @override
  Widget build(BuildContext context) {
    if (displayWidth(context) < 940) {
      return Container(
        //height: 550,
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(horizontal: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 60),
            Container(
              //height: 300,
              //width: 350,
              padding: EdgeInsets.only(left: 16),
              child: UnDraw(
                height: 150,
                width: 300,
                illustration: UnDrawIllustration.online_cv,
                color: Colors.yellow.shade600,
              ),
            ),
            Container(
              //padding: EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                children: [
                  SizedBox(height: 60),
                  Text(
                    "Kontiki Research Services",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    "Assistant Trial Manager",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.blue,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "ECS Technologies",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    "Front End Intern",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.blue,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Eland Oil and Gas",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    "Finance/Procurement Intern",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.blue,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "BSc Computer Science",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    "Texas Southern University",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    } else {
      return Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(width: 52.5),
            Column(
              children: [
                SizedBox(
                  height: 150,
                ),
                Text(
                  "Kontiki Research Services",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                Text(
                  "Assistant Trial Manager",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Colors.blue,
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Text(
                  "ECS Technologies",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                Text(
                  "Front End Intern",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Colors.blue,
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Text(
                  "Eland Oil and Gas",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                Text(
                  "Finance/Procurement Intern",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
            SizedBox(width: 60),
            Container(
              width: 450,
              padding: EdgeInsets.only(top: 55),
              child: UnDraw(
                illustration: UnDrawIllustration.online_cv,
                color: Colors.yellow,
              ),
            ),
          ],
        ),
        //padding: EdgeInsets.symmetric(horizontal: 50),
        height: 500,
        //decoration: BoxDecoration(color: Colors.yellow),
      );
    }
  }
}
