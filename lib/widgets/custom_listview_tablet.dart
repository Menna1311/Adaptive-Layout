import 'package:flutter/material.dart';
import 'package:responsive_app/widgets/item.dart';

class CustomListViewTablet extends StatelessWidget {
  const CustomListViewTablet({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (context, index) {
            return const AspectRatio(
                aspectRatio: 1,
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Item(),
                ));
          }),
    );
  }
}
