import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netfilx_clone/core/contants.dart';
import 'package:netfilx_clone/presentation/search/widgets/search_result.dart';

class ScreenSearch extends StatelessWidget {
  const ScreenSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CupertinoSearchTextField(
            backgroundColor: Colors.grey.withOpacity(0.5),
            prefixIcon: const Icon(
              CupertinoIcons.search,
              color: Colors.grey,
            ),
            suffixIcon: const Icon(CupertinoIcons.xmark_circle_fill),
            style: const TextStyle(color: Colors.white),
          ),
          kheight,
          const Expanded(child: SearchResultWidget())
        ],
      ),
    )));
  }
}
