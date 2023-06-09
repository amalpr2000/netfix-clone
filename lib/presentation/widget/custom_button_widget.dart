import 'package:flutter/material.dart';

import '../../core/colors/colors.dart';

class CustomButtonWidget extends StatelessWidget {
  const CustomButtonWidget(
      {super.key,
      required this.icon,
      required this.title,
      this.iconsize = 30,
      this.textsize = 18.0});

  final IconData icon;
  final String title;
  final double iconsize;
  final double textsize;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: kWhiteColor,
          size: iconsize,
        ),
        Text(
          title,
          style: TextStyle(fontSize: textsize),
        )
      ],
    );
  }
}
