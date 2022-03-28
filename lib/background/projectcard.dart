import 'package:carouselprofile/background/size_helpers.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

const String _url = 'https://flutter.dev';

class ProjectCard extends StatefulWidget {
  const ProjectCard({
    Key? key,
    required this.iconSVG,
    required this.project,
    required this.language,
    required this.toppadding,
  }) : super(key: key);

  final Widget iconSVG;
  final String project;
  final String language;
  final double toppadding;

  @override
  State<ProjectCard> createState() => _ProjectCardState();
}

class _ProjectCardState extends State<ProjectCard> {
  bool isHovered = false;
  Color hoverColor = Colors.white;
  double elevate = 1.5;

  void onEntered(bool isHovered) {
    setState(() {
      this.isHovered = isHovered;
      if (!isHovered) {
        hoverColor = Colors.white;
        elevate = 1.5;
      } else {
        hoverColor = Colors.grey.shade50;
        elevate = 4;
      }
    });
  }

  double changeCardWidth(double cardWidth) {
    setState(() {
      if (displayWidth(context) < 500) {
        cardWidth = 340;
      } else {
        cardWidth = 400;
      }
    });
    return cardWidth;
  }

  void _launchURL() async {
    if (!await launch(_url)) throw 'Could not launch $_url';
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _launchURL,
      child: MouseRegion(
        onEnter: (_) => onEntered(true),
        onExit: (_) => onEntered(false),
        child: Container(
          width: changeCardWidth(400),
          height: 140,
          child: Card(
            color: hoverColor,
            elevation: elevate,
            child: Row(
              //mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 24),
                  child: SizedBox(
                    child: widget.iconSVG,
                    height: 50,
                    width: 50,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 24, top: widget.toppadding),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.project,
                          style: TextStyle(
                            fontSize: changeCardWidth(400) / 15,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          widget.language,
                          style: TextStyle(
                            color: Colors.black45,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
