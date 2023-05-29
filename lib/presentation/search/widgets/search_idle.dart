import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netfilx_clone/core/colors/colors.dart';
import 'package:netfilx_clone/core/contants.dart';
import 'package:netfilx_clone/presentation/search/widgets/title.dart';

const imageUrl =
    'https://www.themoviedb.org/t/p/w533_and_h300_bestv2/cEyhk8tZWubni71M6plwLMQFOIX.jpg';

class SearchIdleWidget extends StatelessWidget {
  const SearchIdleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SearchTextTitile(
          title: 'Top Searches',
        ),
        kheight,
        Expanded(
          child: ListView.separated(
              shrinkWrap: true,
              itemBuilder: (ctx, index) => const TopSearchItems(),
              separatorBuilder: (ctx, index) => kheight20,
              itemCount: 10),
        )
      ],
    );
  }
}

class TopSearchItems extends StatelessWidget {
  const TopSearchItems({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Container(
          width: screenWidth * 0.3,
          height: 70,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover, image: NetworkImage(imageUrl))),
        ),
        const Expanded(
            child: Text(
          'Movie Name',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        )),
        const CircleAvatar(
          backgroundColor: kWhiteColor,
          radius: 25,
          child: CircleAvatar(
            backgroundColor: kBlackColor,
            radius: 23,
            child: Icon(
              CupertinoIcons.play_fill,
              color: kWhiteColor,
            ),
          ),
        )
      ],
    );
  }
}
