import 'package:blobs/blobs.dart';
import 'package:carouselprofile/background/projectcard.dart';
import 'package:carouselprofile/background/size_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ms_undraw/ms_undraw.dart';

class ProjectPage extends StatelessWidget {
  ProjectPage({Key? key}) : super(key: key);

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
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //SizedBox(height: 30),
            Container(
              //height: 300,
              //width: 350,
              padding: EdgeInsets.only(left: 16),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 30),
                    child: Blob.fromID(
                      id: ['18-6-56774'],
                      size: 300,
                      styles: BlobStyles(
                        //color: Color(0xFFDDDDDD),
                        color: Colors.red.withOpacity(0.125),
                      ),
                    ),
                  ),
                  UnDraw(
                    height: 150,
                    width: 300,
                    fit: BoxFit.cover,
                    illustration: UnDrawIllustration.version_control,
                    color: Colors.yellow.shade600,
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 100),
              child: Column(
                children: [
                  //SizedBox(height: 30),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "WebFit",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Text(
                    "Dart/Flutter",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF708090),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Round Robin Operating System",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Text(
                    "C++",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF708090),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Cake Your Day",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Text(
                    "Dart/Flutter",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF708090),
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
            SizedBox(width: 45),
            Column(
              children: [
                SizedBox(
                  height: 150,
                ),
                Text(
                  "WebFit",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                Text(
                  "Dart/Flutter",
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
                  "Round Robin Operating System",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                Text(
                  "C++",
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
                  "Cake Your Day",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                Text(
                  "Dart/Flutter",
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
                illustration: UnDrawIllustration.version_control,
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
