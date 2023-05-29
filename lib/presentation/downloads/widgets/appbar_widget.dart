import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netfilx_clone/core/colors/colors.dart';
import 'package:netfilx_clone/core/contants.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key, required this.title});

  final String title;
  final String smileLogo =
      'https://wallpapers.com/images/high/netflix-profile-pictures-5yup5hd2i60x7ew3.webp';

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        kWidth,
        Text(
          title,
          style: GoogleFonts.montserrat(
              fontSize: 30, fontWeight: FontWeight.bold, color: kWhite),
        ),
        const Spacer(),
        const Icon(Icons.cast, size: 30, color: kWhite),
        kWidth,
        Image.network(
          smileLogo,
          height: 30,
          width: 30,
        ),
        kWidth10,
      ],
    );
  }
}
