import 'package:flutter/material.dart';
import 'package:netfilx_clone/core/colors/colors.dart';
import 'package:netfilx_clone/core/contants.dart';

import 'widgets/coming_soon_widget.dart';
import 'widgets/everyones_watching.dart';

class ScreenNewAndHot extends StatelessWidget {
  const ScreenNewAndHot({super.key});
  final String smileLogo =
      'https://wallpapers.com/images/high/netflix-profile-pictures-5yup5hd2i60x7ew3.webp';

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(90),
            child: AppBar(
              backgroundColor: kBlack,
              title: const Text(
                'New & Hot',
                style: TextStyle(
                    fontSize: 30, fontWeight: FontWeight.w900, color: kWhite),
              ),
              actions: [
                const Icon(
                  Icons.cast,
                  color: Colors.white,
                  size: 30,
                ),
                kWidth,
                Image.network(
                  smileLogo,
                  height: 30,
                  width: 30,
                ),
                kWidth10,
              ],
              bottom: TabBar(
                  labelColor: kButtonColorBlack,
                  unselectedLabelColor: Colors.white,
                  labelStyle: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.bold),
                  indicator: BoxDecoration(
                      color: kWhiteColor, borderRadius: kRadius30),
                  tabs: const [
                    Tab(
                      text: '🍿 Coming Soon',
                    ),
                    Tab(
                      text: '''👀 Everyone's watching''',
                    )
                  ]),
            ),
          ),
          body: TabBarView(children: [
            _buildComingSoon(),
            _buildEveryoneWatching(),
          ]),
        ));
  }

  Widget _buildComingSoon() {
    return ListView.builder(
        itemCount: 10,
        itemBuilder: (BuildContext context, index) => const ComingSoonWidget());
  }

  Widget _buildEveryoneWatching() {
    return ListView.builder(
        itemCount: 10,
        itemBuilder: (BuildContext context, index) =>
            const EveryonesWatchingWidget());
  }
}
