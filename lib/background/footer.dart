import 'package:flutter/material.dart';
import 'package:footer/footer.dart';

class myFooter extends StatelessWidget {
  const myFooter({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 180),
        Footer(
          backgroundColor: Colors.transparent,
          child: Text("made with ❤️ powered by flutter"),
        ),
      ],
    );
  }
}
