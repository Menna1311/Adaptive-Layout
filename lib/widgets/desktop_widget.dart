import 'package:flutter/material.dart';
import 'package:responsive_app/widgets/item.dart';
import 'package:responsive_app/widgets/item2.dart';

class DesktopWidget extends StatelessWidget {
  const DesktopWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: Item()),
        SizedBox(
          height: 12,
        ),
        Expanded(child: Item2())
      ],
    );
  }
}
