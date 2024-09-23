import 'package:flutter/material.dart';
import 'package:responsive_app/widgets/item2.dart';

class ListSliver extends StatelessWidget {
  const ListSliver({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(itemBuilder: (context, index) {
      return const Padding(
        padding: EdgeInsets.only(top: 8.0),
        child: Item2(),
      );
    });
  }
}
