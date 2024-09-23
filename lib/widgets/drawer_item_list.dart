import 'package:flutter/material.dart';
import 'package:responsive_app/models/item_model.dart';
import 'package:responsive_app/widgets/custom_drawer_icon.dart';

class DrawerItemListView extends StatelessWidget {
  const DrawerItemListView({super.key});
  final List<DrawerItemModel> drawerItems = const [
    DrawerItemModel(title: 'DASHBOARD', icon: Icons.home),
    DrawerItemModel(title: 'Itemw ', icon: Icons.add_ic_call_outlined),
    DrawerItemModel(title: 'Itemw ', icon: Icons.add_ic_call_outlined),
    DrawerItemModel(title: 'Itemw ', icon: Icons.add_ic_call_outlined),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: drawerItems.length,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return CustomDrawerIcon(
            drawerItemModel: drawerItems[index],
          );
        });
  }
}
