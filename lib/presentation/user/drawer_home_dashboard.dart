import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../inventory_dashboard.dart';
import 'settings.dart';
import 'user_profile_settings.dart';

class HomeDashboardSideMenu extends StatelessWidget {
  const HomeDashboardSideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: MediaQuery.of(context).size.width / 3,
      child: ListView(
        shrinkWrap: true,
        children: [
          SizedBox(
            height: 100,
            child: DrawerHeader(
              child: Image.asset(
                "assets/BubbleTree.png",
              ),
            ),
          ),
          DrawerListTile(
            icon: Icons.home,
            title: "Calendly & Events",
            onTap: () {
              Get.to(() => const UserMainScreen());
            },
          ),
          DrawerListTile(
            icon: Icons.menu,
            title: "Items",
            onTap: () {},
          ),
          DrawerListTile(
            icon: Icons.folder,
            title: "Inventory",
            onTap: () {
              Get.to(() => const UserMainScreen());
            },
          ),
          DrawerListTile(
            icon: Icons.chat,
            title: "Profile",
            onTap: () {
              Get.to(() => const SettingsUI());
            },
          ),
          DrawerListTile(
            icon: Icons.settings,
            title: "Settings",
            onTap: () {
              Get.to(() => const SettingsPage());
            },
          ),
          const SizedBox(
            height: 10,
          ),
          // Container(
          //   height: 100,
          //   margin: const EdgeInsets.all(24),
          //   padding: const EdgeInsets.all(20),
          //   decoration: BoxDecoration(
          //       color: Colors.blue, borderRadius: BorderRadius.circular(15)),
          //   child: SingleChildScrollView(
          //     child: Column(
          //       crossAxisAlignment: CrossAxisAlignment.stretch,
          //       mainAxisAlignment: MainAxisAlignment.spaceAround,
          //       children: [
          //         const Text("Upgrade your plan",
          //             style: TextStyle(fontWeight: FontWeight.bold)),
          //         Row(
          //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //           children: [
          //             Text("Go to Pro",
          //                 style: TextStyle(
          //                   color: Colors.blue[900],
          //                 )),
          //             InkWell(
          //               onTap: () {},
          //               child: Container(
          //                 height: 30,
          //                 width: 30,
          //                 decoration: BoxDecoration(
          //                   border: Border.all(color: Colors.blue),
          //                   borderRadius: BorderRadius.circular(10),
          //                 ),
          //                 child: Icon(
          //                   Icons.keyboard_double_arrow_right_rounded,
          //                   color: Colors.blue[900],
          //                 ),
          //               ),
          //             )
          //           ],
          //         )
          //       ],
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
