import 'package:flutter/material.dart';
import 'package:responsive_app/widgets/home_view.dart';

void main() {
  runApp(const AdaptiveApp());
}

class AdaptiveApp extends StatelessWidget {
  const AdaptiveApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeView(),
    );
  }
}
// class CustomAdaptiveAppbar extends StatelessWidget
//     implements PreferredSizeWidget {
//   const CustomAdaptiveAppbar({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return LayoutBuilder(builder: (context, constrauints) {
//       return AppBar(
//         backgroundColor: Colors.black,
//           leading: IconButton(
//           onPressed: () {
//             // scaffoldKey.currentState!.openDrawer();
//           },
//           icon: Icon(Icons.menu),
//           color: Colors.white,
//         ),
//       );
//     });
//   }

//   @override
//   // TODO: implement preferredSize
//   Size get preferredSize => Size.fromHeight(56);
// }
