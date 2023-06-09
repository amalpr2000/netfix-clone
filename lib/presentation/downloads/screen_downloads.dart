import 'dart:math';
import 'package:flutter/material.dart';
import 'package:netfilx_clone/core/api.dart';
import 'package:netfilx_clone/core/colors/colors.dart';
import 'package:netfilx_clone/core/contants.dart';
import 'package:netfilx_clone/domain/popular/popular_functions.dart';
import 'widgets/appbar_widget.dart';

class ScreenDownloads extends StatelessWidget {
  ScreenDownloads({super.key});

  final widgetList = [
    const _SmartDownloads(),
    Section2(),
    const Section3(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: const PreferredSize(
              preferredSize: Size.fromHeight(50),
              child: AppBarWidget(
                title: 'Downloads ',
              )),
          body: ListView.separated(
              padding: const EdgeInsets.all(10),
              itemBuilder: (ctx, index) => widgetList[index],
              separatorBuilder: (ctx, index) => const SizedBox(
                    height: 25,
                  ),
              itemCount: widgetList.length)),
    );
  }
}

class Section2 extends StatelessWidget {
  Section2({super.key});
  final List imageList = [
    'https://image.tmdb.org/t/p/w500//qnqGbB22YJ7dSs4o6M7exTpNxPz.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        const Text(
          'Introducing Downloads for you',
          textAlign: TextAlign.center,
          style: TextStyle(
              color: kWhite, fontSize: 24, fontWeight: FontWeight.bold),
        ),
        kheight,
        const Text(
          'We will download a personalized selection of\nmovies and shows for you, so there is\nalways something to watch on your\ndevice',
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.grey, fontSize: 16),
        ),
        SizedBox(
          width: size.width,
          height: size.height * 0.55,
          child: FutureBuilder(
              future: getImageFromPopular(),
              builder: (context, snapshot) => snapshot.hasData
                  ? Stack(
                      alignment: Alignment.center,
                      children: [
                        Center(
                          child: CircleAvatar(
                            backgroundColor: Colors.grey.withOpacity(0.5),
                            radius: size.width * 0.32,
                          ),
                        ),
                        DownloadsImageWidget(
                          imageList: snapshot
                              .data![snapshot.data!.length - 10].posterPath
                              .toString(),
                          margin: const EdgeInsets.only(left: 130, bottom: 20),
                          angle: 20,
                        ),
                        DownloadsImageWidget(
                          imageList: snapshot
                              .data![snapshot.data!.length - 6].posterPath
                              .toString(),
                          margin: const EdgeInsets.only(right: 130, bottom: 20),
                          angle: -20,
                        ),
                        DownloadsImageWidget(
                            imageList: snapshot
                                .data![snapshot.data!.length - 5].posterPath
                                .toString(),
                            margin: const EdgeInsets.only(left: 0, bottom: 10))
                      ],
                    )
                  : Center(
                      child: CircularProgressIndicator(
                        color: Colors.red,
                      ),
                    )),
        ),
      ],
    );
  }
}

class Section3 extends StatelessWidget {
  const Section3({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: MaterialButton(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            color: kButtonColorBlue,
            onPressed: () {},
            child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Text(
                'Setup',
                style: TextStyle(
                    fontSize: 20, fontWeight: FontWeight.bold, color: kWhite),
              ),
            ),
          ),
        ),
        kheight,
        MaterialButton(
          color: Colors.white,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          onPressed: () {},
          child: const Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Text(
              'See what you can download',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: kBlackColor),
            ),
          ),
        ),
      ],
    );
  }
}

class _SmartDownloads extends StatelessWidget {
  const _SmartDownloads();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        kWidth,
        Icon(
          Icons.settings,
          color: kWhiteColor,
        ),
        kWidth,
        Text(
          'Smart Downloads',
          style: TextStyle(color: kWhite),
        ),
      ],
    );
  }
}

class DownloadsImageWidget extends StatelessWidget {
  DownloadsImageWidget(
      {super.key,
      required this.imageList,
      this.angle = 0,
      required this.margin});

  String imageList;
  final double angle;
  final EdgeInsets margin;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Transform.rotate(
      angle: angle * pi / 180,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Container(
          margin: margin,
          width: size.width * 0.33,
          height: size.height * 0.21,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage('$basebil${imageList}'),
                  fit: BoxFit.cover)),
        ),
      ),
    );
  }
}
