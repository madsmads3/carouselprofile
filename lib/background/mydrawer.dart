import 'package:carouselprofile/background/size_helpers.dart';
import 'package:flutter/material.dart';

class _myDrawer extends StatelessWidget {
  const _myDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: displayWidth(context) / 1.5,
      child: Drawer(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 12.0, left: 8),
              child: Align(
                alignment: Alignment.topLeft,
                child: IconButton(
                  iconSize: 32,
                  icon: Icon(Icons.close_rounded),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
            ),
            SizedBox(height: displayHeight(context) / 6),
            ListTile(
              title: Center(
                child: Text(
                  "Home",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              onTap: () {},
            ),
            ListTile(
              title: Center(
                child: Text(
                  "Projects",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              onTap: () {},
            ),
            ListTile(
              title: Center(
                child: Text(
                  "Experience",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              onTap: () {},
            ),
            ListTile(
              title: Center(
                child: Text(
                  "Contact",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
