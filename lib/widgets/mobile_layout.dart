import 'package:flutter/material.dart';
import 'package:responsive_app/widgets/custom_slivergrid.dart';
import 'package:responsive_app/widgets/list_sliver.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: CustomScrollView(
        slivers: [CustomSliverGrid(), ListSliver()],
      ),
    );
  }
}
