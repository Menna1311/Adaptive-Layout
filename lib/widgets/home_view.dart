import 'package:flutter/material.dart';
import 'package:responsive_app/widgets/adaptive_layout.dart';
import 'package:responsive_app/widgets/custom_drawer.dart';
import 'package:responsive_app/widgets/desktop_layout.dart';
import 'package:responsive_app/widgets/mobile_layout.dart';
import 'package:responsive_app/widgets/tablet_layout.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: scaffoldKey,
        drawer: const CustomDrawer(),
        appBar: buildAppbar(context),
        backgroundColor: Colors.grey,
        body: AdaptiveLayout(
            mobileLayout: (context) => const MobileLayout(),
            tabletLayout: (context) => const TabletLayout(),
            desktopLayout: (context) => const DesktopLayout()));
  }

  AppBar? buildAppbar(BuildContext context) {
    return MediaQuery.of(context).size.width < 900
        ? AppBar(
            backgroundColor: Colors.black,
            leading: IconButton(
              onPressed: () {
                scaffoldKey.currentState!.openDrawer();
              },
              icon: const Icon(Icons.menu),
              color: Colors.white,
            ),
          )
        : null;
  }
}
