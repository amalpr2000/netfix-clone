import 'package:flutter/material.dart';

import '../../../core/contants.dart';
import '../../widget/custom_button_widget.dart';
import '../../widget/video_widget.dart';

class ComingSoonWidget extends StatelessWidget {
  const ComingSoonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      children: [
        SizedBox(
          width: 50,
          height: 450,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('FEB', style: TextStyle(fontSize: 16, color: kGreyColor)),
              Text(
                '11',
                style: TextStyle(
                    color: kGreyColor,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 4),
              )
            ],
          ),
        ),
        SizedBox(
          width: size.width - 50,
          height: 450,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              VideoWidget(),
              Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'OUTLANDER',
                    style: TextStyle(
                        fontSize: 35,
                        letterSpacing: -5,
                        fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Row(
                    children: [
                      CustomButtonWidget(
                        icon: Icons.notifications,
                        title: 'Remind me',
                        iconsize: 22,
                        textsize: 12,
                      )
                    ],
                  ),
                  kWidth,
                  CustomButtonWidget(
                    icon: Icons.info,
                    title: 'Info',
                    iconsize: 22,
                    textsize: 12,
                  ),
                  kWidth20,
                ],
              ),
              kheight20,
              Text(
                'Coming on Friday',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              kheight,
              Text('Outlander',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
              kheight,
              Text(
                'When a spacecraft crashes in Norway during the Iron Age, two figures emerge from the wreckage: Kainan (James Caviezel), an alien soldier, and the Moorwen, his mortal enemy.',
                style: TextStyle(color: kGreyColor, fontSize: 16),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
