import 'package:carouselprofile/background/size_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class top extends StatefulWidget {
  top({Key? key}) : super(key: key);

  @override
  State<top> createState() => _topState();
}

class _topState extends State<top> {
  String splashAsset = 'assets/2174689.svg';

  bool isHovered = false;
  Color hoverColor1 = Colors.transparent;
  Color hoverColor2 = Colors.transparent;
  Color hoverColor3 = Colors.transparent;
  Color hoverColor4 = Colors.transparent;
  void onEntered1(bool isHovered) {
    setState(() {
      this.isHovered = isHovered;
      if (!isHovered) {
        hoverColor1 = Colors.transparent;
      } else {
        hoverColor1 = Colors.yellow.shade600;
      }
    });
  }

  void onEntered2(bool isHovered) {
    setState(() {
      this.isHovered = isHovered;
      if (!isHovered) {
        hoverColor2 = Colors.transparent;
      } else {
        hoverColor2 = Colors.yellow.shade600;
      }
    });
  }

  void onEntered3(bool isHovered) {
    setState(() {
      this.isHovered = isHovered;
      if (!isHovered) {
        hoverColor3 = Colors.transparent;
      } else {
        hoverColor3 = Colors.yellow.shade600;
      }
    });
  }

  void onEntered4(bool isHovered) {
    setState(() {
      this.isHovered = isHovered;
      if (!isHovered) {
        hoverColor4 = Colors.transparent;
      } else {
        hoverColor4 = Colors.yellow.shade600;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    if (displayWidth(context) < 910) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MouseRegion(
                onEnter: (_) => onEntered1(true),
                onExit: (_) => onEntered1(false),
                child: Stack(
                  children: [
                    Positioned(
                        child: SvgPicture.asset(
                          'assets/2189644.svg',
                          color: hoverColor1,
                          width: 550,
                          height: 100,
                        ),
                        top: 0,
                        right: 2),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "Home",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              MouseRegion(
                onEnter: (_) => onEntered2(true),
                onExit: (_) => onEntered2(false),
                child: Stack(
                  children: [
                    Positioned(
                        child: SvgPicture.asset(
                          'assets/2189644.svg',
                          color: hoverColor2,
                          width: 550,
                          height: 100,
                        ),
                        top: 0,
                        right: 32),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "Experience",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(width: 25),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MouseRegion(
                onEnter: (_) => onEntered3(true),
                onExit: (_) => onEntered3(false),
                child: Stack(
                  children: [
                    Positioned(
                        child: SvgPicture.asset(
                          'assets/2189644.svg',
                          color: hoverColor3,
                          width: 550,
                          height: 100,
                        ),
                        top: 0,
                        right: 52),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "Projects",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              MouseRegion(
                onEnter: (_) => onEntered4(true),
                onExit: (_) => onEntered4(false),
                child: Stack(
                  children: [
                    Positioned(
                        child: SvgPicture.asset(
                          'assets/2189644.svg',
                          color: hoverColor4,
                          width: 550,
                          height: 100,
                        ),
                        top: 0,
                        right: 32),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "Contact",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      );
    } else {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MouseRegion(
            onEnter: (_) => onEntered1(true),
            onExit: (_) => onEntered1(false),
            child: Stack(
              children: [
                Positioned(
                    child: SvgPicture.asset(
                      'assets/2189644.svg',
                      color: hoverColor1,
                      width: 550,
                      height: 100,
                    ),
                    top: 0,
                    right: 2),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Me",
                    style: TextStyle(
                      fontSize: 38,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(width: 100),
          MouseRegion(
            onEnter: (_) => onEntered2(true),
            onExit: (_) => onEntered2(false),
            child: Stack(
              children: [
                Positioned(
                    child: SvgPicture.asset(
                      'assets/2189644.svg',
                      color: hoverColor2,
                      width: 550,
                      height: 100,
                    ),
                    top: 0,
                    right: 32),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Projects",
                    style: TextStyle(
                      fontSize: 38,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(width: 100),
          MouseRegion(
            onEnter: (_) => onEntered3(true),
            onExit: (_) => onEntered3(false),
            child: Stack(
              children: [
                Positioned(
                    child: SvgPicture.asset(
                      'assets/2189644.svg',
                      color: hoverColor3,
                      width: 550,
                      height: 100,
                    ),
                    top: 0,
                    right: 52),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Experience",
                    style: TextStyle(
                      fontSize: 38,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(width: 100),
          MouseRegion(
            onEnter: (_) => onEntered4(true),
            onExit: (_) => onEntered4(false),
            child: Stack(
              children: [
                Positioned(
                    child: SvgPicture.asset(
                      'assets/2189644.svg',
                      color: hoverColor4,
                      width: 550,
                      height: 100,
                    ),
                    top: 0,
                    right: 32),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Contact",
                    style: TextStyle(
                      fontSize: 38,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      );
    }
  }
}
