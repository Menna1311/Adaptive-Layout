import 'package:flutter/material.dart';
import 'package:responsive_app/main.dart';
import 'package:responsive_app/widgets/desktop_widget.dart';
import 'package:responsive_app/widgets/tablet_layout.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        Expanded(flex: 3, child: TabletLayout()),
        Expanded(child: DesktopWidget())
      ],
    );
  }
}
