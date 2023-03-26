// ignore_for_file: file_names

import 'package:final_task_warpe/presentation/user/settings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'donut_chart.dart';
import 'inventory_dashboard.dart';
import 'inventory_items.dart';
import 'total_inventory_items.dart';
import 'user/user_dashboard.dart';
import 'user/user_profile_settings.dart';

class InventorySideMenu extends StatelessWidget {
  const InventorySideMenu({
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
            title: "Finance Dashboard",
            onTap: () {
              Get.to(() => UserDashboard());
            },
          ),
          DrawerListTile(
            icon: Icons.home,
            title: "Overview",
            onTap: () {
              Get.to(() => PieChartUI());
            },
          ),
          DrawerListTile(
            icon: Icons.menu,
            title: "Items Monitoring",
            onTap: () {
              Get.to(() => const InventoryItems());
            },
          ),
          DrawerListTile(
            icon: Icons.folder,
            title: "Inventory Activity Chart",
            onTap: () {
              Get.to(() => const TotalInventoryItems());
            },
          ),
          DrawerListTile(
            icon: Icons.chat,
            title: "Profile",
            onTap: () {
              Get.to(
                () => const SettingsUI(),
              );
            },
          ),
          DrawerListTile(
            icon: Icons.settings,
            title: "Settings",
            onTap: () {
              Get.to(
                () => const SettingsPage(),
              );
            },
          ),
          const SizedBox(
            height: 10,
          ),
          Image.network(
            "https://thumbs.dreamstime.com/b/help-17242453.jpg",
            height: 150,
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 100,
            margin: const EdgeInsets.all(24),
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
                color: Colors.blue, borderRadius: BorderRadius.circular(15)),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Text("Upgrade your plan",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Go to Pro",
                          style: TextStyle(
                            color: Colors.blue[900],
                          )),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.blue),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Icon(
                            Icons.keyboard_double_arrow_right_rounded,
                            color: Colors.blue[900],
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
