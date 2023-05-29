// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netfilx_clone/presentation/downloads/screen_downloads.dart';
import 'package:netfilx_clone/presentation/fast_laugh/screen_fast_and_laugh.dart';
import 'package:netfilx_clone/presentation/home/screen_home.dart';
import 'package:netfilx_clone/presentation/new&hot/screen_new_and_hot.dart';
import 'package:netfilx_clone/presentation/search/screen_search.dart';

class BottomNav extends StatefulWidget {
  BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: pageList[pageIndex],
        bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            onTap: (value) {
              setState(() {
                pageIndex = value;
              });
            },
            currentIndex: pageIndex,
            backgroundColor: Colors.black,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.grey,
            items: [
              BottomNavigationBarItem(
                label: 'Home',
                icon: Icon(Icons.home),
              ),
              BottomNavigationBarItem(
                label: 'New & Hot',
                icon: Icon(CupertinoIcons.photo_fill_on_rectangle_fill),
              ),
              BottomNavigationBarItem(
                label: 'Fast Laughs',
                icon: Icon(CupertinoIcons.smiley_fill),
              ),
              BottomNavigationBarItem(
                label: 'Search',
                icon: Icon(CupertinoIcons.search),
              ),
              BottomNavigationBarItem(
                label: 'Downloads',
                icon: Icon(CupertinoIcons.arrow_down_to_line_alt),
              )
            ]));
  }

  List<Widget> pageList = [
    Home(),
    ScreenNewAndHot(),
    ScreenFastLaugh(),
    ScreenSearch(),
    ScreenDownloads(),
  ];
}
