import 'package:flutter/material.dart';
import 'package:responsive_app/widgets/drawer_item_list.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return const Drawer(
        child: Column(
      children: [
        DrawerHeader(
          child: Icon(Icons.favorite, color: Colors.black, size: 48),
        ),
        DrawerItemListView(),
      ],
    ));
  }
}
