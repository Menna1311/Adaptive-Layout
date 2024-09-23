import 'package:flutter/material.dart';
import 'package:responsive_app/models/item_model.dart';

class CustomDrawerIcon extends StatelessWidget {
  const CustomDrawerIcon({super.key, required this.drawerItemModel});
  final DrawerItemModel drawerItemModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(drawerItemModel.icon),
      title:
          FittedBox(fit: BoxFit.scaleDown, child: Text(drawerItemModel.title)),
    );
  }
}
