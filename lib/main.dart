import 'package:flutter/material.dart';
import 'package:responsive_app/models/item_model.dart';
import 'package:responsive_app/widgets/desktop_layout.dart';
import 'package:responsive_app/widgets/tablet_layout.dart';

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
      drawer: CustomDrawer(),
      appBar: buildAppbar(context),
      backgroundColor: Colors.grey,
      body: LayoutBuilder(builder: (context, constrauints) {
        if (constrauints.maxWidth < 600) {
          return MobileLayout();
        } else if (constrauints.maxWidth < 900) {
          return TabletLayout();
        } else {
          return DesktopLayout();
        }
      }),
    );
  }

  AppBar? buildAppbar(BuildContext context) {
    return MediaQuery.of(context).size.width < 900
        ? AppBar(
            backgroundColor: Colors.black,
            leading: IconButton(
              onPressed: () {
                scaffoldKey.currentState!.openDrawer();
              },
              icon: Icon(Icons.menu),
              color: Colors.white,
            ),
          )
        : null;
  }
}

class MobileLayout extends StatelessWidget {
  const MobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: CustomScrollView(
        slivers: [CustomSliverGrid(), ListSliver()],
      ),
    );
  }
}

class CustomSliverGrid extends StatelessWidget {
  const CustomSliverGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, mainAxisSpacing: 8, crossAxisSpacing: 8),
      itemBuilder: (context, index) {
        return Item();
      },
      itemCount: 4,
    );
  }
}

class Item extends StatelessWidget {
  const Item({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.grey.shade300, borderRadius: BorderRadius.circular(16)),
    );
  }
}

class ListSliver extends StatelessWidget {
  const ListSliver({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(itemBuilder: (context, index) {
      return Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: Item2(),
      );
    });
  }
}

class Item2 extends StatelessWidget {
  const Item2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.grey.shade300,
      ),
    );
  }
}

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
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
            return AspectRatio(
                aspectRatio: 1,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Item(),
                ));
          }),
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
