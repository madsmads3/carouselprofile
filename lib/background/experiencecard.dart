import 'package:carouselprofile/background/size_helpers.dart';
import 'package:flutter/material.dart';

class ExperienceCard extends StatefulWidget {
  const ExperienceCard({
    Key? key,
    required this.iconSVG,
    required this.company,
    required this.role,
    required this.toppadding,
  }) : super(key: key);

  final Widget iconSVG;
  final String company;
  final String role;
  final double toppadding;

  @override
  State<ExperienceCard> createState() => _ExperienceCardState();
}

class _ExperienceCardState extends State<ExperienceCard> {
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

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
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
                        widget.company,
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        widget.role,
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
    );
  }
}
