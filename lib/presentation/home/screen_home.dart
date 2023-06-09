// ignore_for_file: prefer_const_constructors, prefer_const_declarations, prefer_const_literals_to_create_immutables

import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:netfilx_clone/core/api.dart';
import 'package:netfilx_clone/core/colors/colors.dart';
import 'package:netfilx_clone/core/contants.dart';
import 'package:netfilx_clone/domain/past_year/past_year_functions.dart';
import 'package:netfilx_clone/domain/popular/popular_functions.dart';
import 'package:netfilx_clone/domain/top10_tv/top10tv_functions.dart';
import 'package:netfilx_clone/domain/trending/trending_functions.dart';
import 'package:netfilx_clone/domain/tv_series/tv_series_function.dart';

final String q =
    'https://image.tmdb.org/t/p/w500//r2J02Z2OpNTctfOSN1Ydgii51I3.jpg';
final String netflixLogo =
    "https://www.freepnglogos.com/uploads/netflix-logo-circle-png-5.png";
final String smileLogo =
    'https://wallpapers.com/images/high/netflix-profile-pictures-5yup5hd2i60x7ew3.webp';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: kBlack,
        leading: Image.network(netflixLogo),
        actions: [
          Row(
            children: [
              Icon(
                Icons.cast,
                size: 28,
                color: kWhite,
              ),
              kWidth10,
              Image.network(
                smileLogo,
                height: 30,
                width: 30,
              ),
              kWidth10,
            ],
          )
        ],
        bottom: PreferredSize(
            preferredSize: Size(double.infinity, 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(onPressed: () {}, child: Text('TV Shows')),
                TextButton(onPressed: () {}, child: Text('Movies')),
                TextButton(onPressed: () {}, child: Text('Categories'))
              ],
            )),
      ),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 40),
            height: 500,
            width: double.infinity,
            child: Image.network(q),
          ),
          MainImgOptions(),
          HomeHorizotalTiles(
            title: 'Released in the past year',
            imageList: [q, q, q, q, q, q],
            fun: getPastYear(),
          ),
          HomeHorizotalTiles(
            title: 'Trending Now',
            imageList: [q, q, q, q, q, q],
          ),
          StackHorizotalTiles(
              title: 'Top 10 TV In India Today', imageList: [q, q, q, q, q, q]),
          HomeHorizotalTiles(
              fun: getImageFromPopular(),
              title: 'Trends Drama',
              imageList: [q, q, q, q, q, q]),
          HomeHorizotalTiles(
              fun: getImageFromTV(),
              title: 'South Indian Cinema',
              imageList: [q, q, q, q, q, q]),
        ],
      ),
    );
  }
}

class MainImgOptions extends StatelessWidget {
  const MainImgOptions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        kWidth50,
        ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(Colors.transparent),
            ),
            onPressed: () {},
            child: Column(
              children: [
                Icon(
                  Icons.add,
                  color: kWhite,
                ),
                Text(
                  'My List',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            )),
        Spacer(),
        ElevatedButton(
            onPressed: () {},
            child: Row(
              children: [
                Icon(
                  Icons.play_arrow,
                ),
                Text('   Play'),
              ],
            )),
        Spacer(),
        ElevatedButton(
            style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.transparent)),
            onPressed: () {},
            child: Column(
              children: [
                Icon(
                  Icons.info_outline,
                  color: kWhite,
                ),
                Text('Info', style: TextStyle(color: Colors.white)),
              ],
            )),
        kWidth50
      ],
    );
  }
}

class HomeHorizotalTiles extends StatelessWidget {
  HomeHorizotalTiles(
      {super.key, required this.title, required this.imageList, this.fun});
  String title;
  List<String> imageList;
  Future<List>? fun;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Text(
            title,
            style: TextStyle(fontSize: 22, color: Colors.white),
          ),
        ),
        SizedBox(
          height: 250,
          child: FutureBuilder(
            future: fun ?? getImageFromPopular(),
            builder: (context, snapshot) => ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                String? imagepath = snapshot.data?[index].posterPath;
                return snapshot.hasData
                    ? Container(
                        margin:
                            EdgeInsets.only(left: 10, right: 10, bottom: 10),
                        child: Image.network(
                          "$basebil${imagepath}",
                          fit: BoxFit.cover,
                        ),
                      )
                    : Center(
                        child: CircularProgressIndicator(),
                      );
              },
              itemCount: 20,
            ),
          ),
        )
      ],
    );
  }
}

class StackHorizotalTiles extends StatelessWidget {
  StackHorizotalTiles(
      {super.key, required this.title, required this.imageList});
  String title;
  List<String> imageList;

  @override
  Widget build(BuildContext context) {
    var listView = FutureBuilder(
      future: getTvSeries(),
      builder: (context, snapshot) => ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          String? imgPath = snapshot.data?[index].posterPath;

          return snapshot.hasData
              ? Stack(
                  // alignment: Alignment.bottomLeft,
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 10),
                      // color: Colors.red,
                      // width: 200,
                      child: Container(
                        margin: EdgeInsets.only(left: 30, right: 0, bottom: 0),
                        child: Image.network('$basebil${imgPath}'),
                      ),
                    ),
                    Positioned(
                      bottom: -28,
                      left: 5,
                      child: BorderedText(
                        strokeWidth: 10.0,
                        strokeColor: kWhite,
                        child: Text(
                          '${index + 1}',
                          style: const TextStyle(
                              color: kBlack,
                              fontSize: 120,
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.none,
                              decorationColor: Colors.black),
                        ),
                      ),
                    ),
                  ],
                )
              : Center(
                  child: CircularProgressIndicator(),
                );
        },
        itemCount: 10,
      ),
    );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Text(
            title,
            style: TextStyle(fontSize: 22, color: Colors.white),
          ),
        ),
        Stack(children: [
          SizedBox(
            height: 250,
            child: listView,
          ),
        ])
      ],
    );
  }
}
