import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: Text.rich(TextSpan(children: [
        TextSpan(
          text: 'News',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        TextSpan(
            text: 'Cloud',
            style: TextStyle(
              color: Colors.orange,
              fontWeight: FontWeight.bold,
            ))
      ])),
    );
  }
}
