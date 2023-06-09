import 'package:flutter/material.dart';

import '../../../core/colors/colors.dart';

class VideoListItem extends StatelessWidget {
  final int index;
  const VideoListItem({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(color: Colors.accents[index % Colors.accents.length]),
      Align(
        alignment: Alignment.bottomCenter,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              CircleAvatar(
                radius: 30,
                backgroundColor: Colors.black.withOpacity(0.5),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.volume_off,
                    color: kWhiteColor,
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage(
                          "https://www.91-cdn.com/hub/wp-content/uploads/2023/03/john-wick-movies-ott.jpg"),
                    ),
                  ),
                  VideoActionsWidgets(icon: Icons.emoji_emotions, title: 'LOL'),
                  VideoActionsWidgets(icon: Icons.add, title: 'My List'),
                  VideoActionsWidgets(icon: Icons.share, title: 'Share'),
                  VideoActionsWidgets(icon: Icons.play_arrow, title: 'Play'),
                ],
              )
            ],
          ),
        ),
      )
    ]);
  }
}

class VideoActionsWidgets extends StatelessWidget {
  final IconData icon;
  final String title;
  const VideoActionsWidgets(
      {super.key, required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Column(
        children: [
          Icon(icon),
          Text(title),
        ],
      ),
    );
  }
}
