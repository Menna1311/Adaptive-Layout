import 'package:flutter/material.dart';
import 'package:responsive_app/main.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: CustomListViewTablet()),
          ListSliver()
        ],
      ),
    );
  }
}
