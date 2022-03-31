import 'package:carouselprofile/background/size_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ms_undraw/ms_undraw.dart';

class contactPage extends StatefulWidget {
  contactPage({Key? key}) : super(key: key);

  @override
  State<contactPage> createState() => _contactPageState();
}

class _contactPageState extends State<contactPage> {
  final Widget linkedSVG = SvgPicture.network(
    'https://simpleicons.org/icons/linkedin.svg',
    width: 100,
    height: 100,
    color: Color(0xFF0077b5),
    placeholderBuilder: (BuildContext context) => Container(
        padding: const EdgeInsets.all(30.0),
        child: const CircularProgressIndicator()),
  );

  final Widget mailSVG = SvgPicture.network(
    'https://simpleicons.org/icons/gmail.svg',
    width: 100,
    height: 100,
    color: Colors.red,
    placeholderBuilder: (BuildContext context) => Container(
        padding: const EdgeInsets.all(30.0),
        child: const CircularProgressIndicator()),
  );

  final Widget gitSVG = SvgPicture.network(
    'https://simpleicons.org/icons/github.svg',
    width: 100,
    height: 100,
    //color: Colors.blue,
    placeholderBuilder: (BuildContext context) => Container(
        padding: const EdgeInsets.all(30.0),
        child: const CircularProgressIndicator()),
  );

  final Widget igSVG = SvgPicture.network(
    'https://simpleicons.org/icons/instagram.svg',
    width: 100,
    height: 100,
    //color: Colors.blue,
    placeholderBuilder: (BuildContext context) => Container(
        padding: const EdgeInsets.all(30.0),
        child: const CircularProgressIndicator()),
  );

  @override
  Widget build(BuildContext context) {
    if (displayWidth(context) < 940) {
      return Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 30),
            Container(
              child: UnDraw(
                height: 150,
                width: 300,
                illustration: UnDrawIllustration.social_ideas,
                color: Colors.yellow,
              ),
            ),
            SizedBox(height: 15),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 100),
              child: SocialLinks(
                  mailSVG: mailSVG,
                  gitSVG: gitSVG,
                  igSVG: igSVG,
                  linkedSVG: linkedSVG),
            ),
          ],
        ),
      );
    } else {
      return Container(
        //padding: EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.only(left: 100),
                  child: Center(
                    child: SocialLinks(
                        mailSVG: mailSVG,
                        gitSVG: gitSVG,
                        igSVG: igSVG,
                        linkedSVG: linkedSVG),
                  ),
                ),
                SizedBox(width: 100),
                Container(
                  width: 400,
                  height: 400,
                  //padding: EdgeInsets.only(bottom: 100),
                  alignment: Alignment.topRight,
                  child: UnDraw(
                    illustration: UnDrawIllustration.social_ideas,
                    color: Colors.yellow,
                  ),
                ),
              ],
            ),
          ],
        ),
        height: 500,
        //decoration: BoxDecoration(color: Colors.yellow),
      );
    }
  }
}

class SocialLinks extends StatelessWidget {
  const SocialLinks({
    Key? key,
    required this.mailSVG,
    required this.gitSVG,
    required this.igSVG,
    required this.linkedSVG,
  }) : super(key: key);

  final Widget mailSVG;
  final Widget gitSVG;
  final Widget igSVG;
  final Widget linkedSVG;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              child: Container(
                height: 75,
                width: 75,
                padding: EdgeInsets.all(16),
                child: mailSVG,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(
                    width: 1.0,
                    style: BorderStyle.solid,
                  ),
                ),
              ),
            ),
            SizedBox(width: 12.5),
            MouseRegion(
              child: Container(
                height: 75,
                width: 75,
                padding: EdgeInsets.all(16),
                child: gitSVG,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(
                    width: 1.0,
                    style: BorderStyle.solid,
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 12.5),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MouseRegion(
              child: Container(
                height: 75,
                width: 75,
                padding: EdgeInsets.all(16),
                child: igSVG,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(
                    width: 1.0,
                    style: BorderStyle.solid,
                  ),
                ),
              ),
            ),
            SizedBox(width: 12.5),
            MouseRegion(
              child: Container(
                height: 75,
                width: 75,
                padding: EdgeInsets.all(16),
                child: linkedSVG,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(
                    width: 1.0,
                    style: BorderStyle.solid,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
