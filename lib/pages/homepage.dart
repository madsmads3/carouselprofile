import 'package:blobs/blobs.dart';
import 'package:carouselprofile/background/size_helpers.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ms_undraw/ms_undraw.dart';
import 'package:url_launcher/url_launcher.dart';

class homePage extends StatelessWidget {
  const homePage({
    Key? key,
  }) : super(key: key);

  _launchResumeURL() async {
    const url =
        'https://drive.google.com/file/d/1vjROKZ_STUN7SFrGziUBuLhCCQDw1X7D/view?usp=sharing';
    if (await canLaunch(url)) {
      await launch(url, forceSafariVC: true, forceWebView: true);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    if (displayWidth(context) < 940) {
      return Container(
        //padding: EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //SizedBox(height: 30),
            Container(
              //height: 300,
              //width: 350,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Blob.fromID(
                      id: ['18-7-54607'],
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
                    illustration: UnDrawIllustration.site_content,
                    color: Colors.yellow.shade600,
                  ),
                ],
              ),
            ),
            Container(
              //padding: EdgeInsets.symmetric(horizontal: 100),
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //SizedBox(height: 30),
                  Text(
                    "DAVID AHMADU",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.outfit(
                      fontSize: 28,
                      fontWeight: FontWeight.w700,
                      letterSpacing: 0.3,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "Software Engineer  / Front-End Dev",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.urbanist(
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
                    style: GoogleFonts.urbanist(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      //color: Colors.grey.shade700,
                      color: Color(0xFF708090),
                      letterSpacing: 0.2,
                    ),
                  ),
                  SizedBox(height: 15),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.transparent,
                      shadowColor: Colors.transparent,
                      elevation: 0,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 50, vertical: 10),
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                            color: Colors.red.withOpacity(0.425), width: 1),
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    onPressed: _launchResumeURL,
                    child: Container(
                      width: 200,
                      height: 50,
                      child: Center(
                        child: Text(
                          "View Resume",
                          style: GoogleFonts.outfit(
                            color: Colors.red.withOpacity(0.625),
                            fontSize: 15,
                          ),
                        ),
                      ),
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
