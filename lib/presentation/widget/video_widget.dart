import 'package:flutter/material.dart';

import '../../core/colors/colors.dart';

class VideoWidget extends StatelessWidget {
  const VideoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: double.infinity,
          height: 200,
          child: Image.network(
            'https://www.themoviedb.org/t/p/w355_and_h200_multi_faces/Ai6HryU8R00XSgiCTeQoF75um84.jpg',
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          bottom: 10,right: 10,
          child: CircleAvatar(
            radius: 22,
            backgroundColor: Colors.black.withOpacity(0.5),
            child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.volume_off,
                  color: kButtonColorWhite,
                  size: 20,
                )),
          ),
        ),
      ],
    );
  }
}