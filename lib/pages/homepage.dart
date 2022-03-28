import 'package:carouselprofile/background/size_helpers.dart';
import 'package:flutter/material.dart';
import 'package:ms_undraw/ms_undraw.dart';

class homePage extends StatelessWidget {
  const homePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (displayWidth(context) < 940) {
      return Container(
        //height: 500,
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 60),
            Container(
              //height: 300,
              //width: 350,
              child: UnDraw(
                height: 150,
                width: 300,
                illustration: UnDrawIllustration.site_content,
                color: Colors.yellow.shade600,
              ),
            ),
            Container(
              //padding: EdgeInsets.symmetric(horizontal: 100),
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 30),
                  Text(
                    "DAVID AHMADU",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w700,
                      letterSpacing: 1,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "Software Engineer  / Front-End Dev",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.blue,
                      letterSpacing: 0.2,
                    ),
                  ),
                  SizedBox(height: 1),
                  Text(
                    "Houston, TX",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey.shade700,
                      letterSpacing: 0.2,
                    ),
                  ),
                  SizedBox(height: 35),
                  ElevatedButton(
                    onPressed: () {},
                    child: Container(
                      width: 200,
                      height: 50,
                      child: Center(child: Text("Download Resume")),
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
            SizedBox(width: 50),
            Column(
              children: [
                SizedBox(
                  height: 225,
                ),
                Text(
                  "DAVID AHMADU",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 1,
                  ),
                ),
                Text(
                  "Software Engineer  / Front-End Dev",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Colors.blue,
                  ),
                ),
                Text(
                  "Houston, TX",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey.shade700,
                  ),
                ),
                SizedBox(height: 25),
                ElevatedButton(
                  onPressed: () {},
                  child: Container(
                    width: 200,
                    height: 50,
                    child: Center(child: Text("Download Resume")),
                  ),
                ),
              ],
            ),
            SizedBox(width: 50),
            Container(
              padding: EdgeInsets.only(top: 10),
              width: 550,
              child: UnDraw(
                illustration: UnDrawIllustration.site_content,
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
