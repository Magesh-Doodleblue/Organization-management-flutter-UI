import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../find_event.dart';
import '../../inventory_dashboard.dart';

class UserLeftSide extends StatefulWidget {
  const UserLeftSide({super.key});

  @override
  State<UserLeftSide> createState() => _UserLeftSideState();
}

class _UserLeftSideState extends State<UserLeftSide> {
  bool isSelectedExplore = false;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        color: Colors.white,
        child: ScrollConfiguration(
          behavior: ScrollConfiguration.of(context).copyWith(dragDevices: {
            PointerDeviceKind.mouse,
            PointerDeviceKind.touch,
          }, scrollbars: false),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: [
                const SizedBox(height: 20),
                const CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('assets/2m.jpg'),
                ),
                const SizedBox(height: 10),
                const Text(
                  "Magesh K",
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 5),
                const Text(
                  "@magesh_k",
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  height: 70,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: FittedBox(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: const [
                            Text(
                              "7",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              "Events\nOrganized",
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                        const VerticalDivider(
                          endIndent: 35,
                          color: Colors.black,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: const [
                            Text(
                              "12",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              "Event\nAttended",
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                        const VerticalDivider(
                          endIndent: 35,
                          color: Colors.black,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: const [
                            Text(
                              "19",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              "Events\npending",
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  alignment: Alignment.centerLeft,
                  child: const Text(
                    "Magesh K",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 5),
                Container(
                  padding: const EdgeInsets.only(left: 25, right: 10),
                  alignment: Alignment.centerLeft,
                  child: const Text(
                    "Learner | Flutter Dev | Chess player",
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                const Padding(
                  padding: EdgeInsets.only(left: 23.0),
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      "Menu",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 25),
                Container(
                  height: 30,
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: InkWell(
                    onTap: () {},
                    child: Row(
                      children: const [
                        Icon(
                          Icons.event,
                          color: Colors.black,
                          size: 28,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          "Events",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  height: 30,
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: InkWell(
                    onTap: () {
                      Get.to(() => const FindEvent());
                    },
                    child: Row(
                      children: const [
                        Icon(
                          Icons.search_outlined,
                          color: Colors.black54,
                          size: 28,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          "Explore events",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  height: 30,
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: InkWell(
                    onTap: () {
                      Get.to(
                        () => const UserMainScreen(),
                      );
                    },
                    child: Row(
                      children: const [
                        Icon(
                          Icons.search_outlined,
                          color: Colors.black54,
                          size: 28,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          "Stocks",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  height: 30,
                  // color: Colors.red,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  child: InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Row(
                      children: const [
                        Icon(
                          Icons.logout_outlined,
                          color: Colors.black54,
                          size: 28,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          "Logout",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
