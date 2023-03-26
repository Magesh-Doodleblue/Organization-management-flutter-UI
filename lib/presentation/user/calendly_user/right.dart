// ignore_for_file: avoid_unnecessary_containers

import 'dart:ui';

import 'package:flutter/material.dart';

import '../../../data/contacts.dart';
import '../../../data/globle.dart';

class UserRightSide extends StatefulWidget {
  const UserRightSide({super.key});

  @override
  State<UserRightSide> createState() => UserRightSideState();
}

class UserRightSideState extends State<UserRightSide> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 7,
      child: Container(
        margin: const EdgeInsets.only(top: 10, right: 10, bottom: 10),
        decoration: const BoxDecoration(
          color: Color(0xFFE1E2E2),
          borderRadius: BorderRadius.all(Radius.circular(35)),
        ),
        child: Column(
          children: [
            Expanded(
              child: ScrollConfiguration(
                behavior:
                    ScrollConfiguration.of(context).copyWith(dragDevices: {
                  PointerDeviceKind.mouse,
                  PointerDeviceKind.touch,
                }, scrollbars: false),
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        children: [
                          const SizedBox(
                            width: 30,
                          ),
                          SizedBox(
                            width: 300,
                            height: 100,
                            child: TextFormField(
                              decoration: InputDecoration(
                                fillColor: Colors.grey,
                                hintText: "Search",
                                prefixIcon: const Icon(Icons.search),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      feed(),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Container feed() {
    return Container(child: const ContactsList());
  }

  Container story() {
    return Container(
      // color: Colors.red,
      margin: const EdgeInsets.only(bottom: 10),
      // height: 400,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            alignment: Alignment.centerLeft,
            child: const Text(
              "Stories",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 15),
          Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              alignment: Alignment.centerLeft,
              child: ScrollConfiguration(
                behavior:
                    ScrollConfiguration.of(context).copyWith(dragDevices: {
                  PointerDeviceKind.mouse,
                  PointerDeviceKind.touch,
                }, scrollbars: false),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  child: Row(
                    children: [
                      ...List.generate(storyData.length, (index) {
                        if (index == 0) {
                          return Container(
                            margin: const EdgeInsets.only(left: 10),
                            child: Column(
                              children: [
                                Stack(
                                  alignment: Alignment.centerRight,
                                  children: const [
                                    CircleAvatar(
                                      radius: 38,
                                      backgroundImage:
                                          AssetImage('assets/2m.jpg'),
                                    ),
                                    Positioned(
                                      bottom: -0,
                                      right: 0,
                                      child: CircleAvatar(
                                        radius: 12,
                                        backgroundColor: Colors.blue,
                                        child: Icon(
                                          Icons.add,
                                          size: 10,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 8),
                                const Text("Your Story")
                              ],
                            ),
                          );
                        }
                        return Container(
                          margin: const EdgeInsets.only(left: 20),
                          child: Column(
                            children: [
                              Stack(
                                alignment: Alignment.center,
                                children: [
                                  const CircleAvatar(
                                    radius: 44,
                                    backgroundColor:
                                        Color.fromARGB(255, 245, 60, 13),
                                    child: CircleAvatar(
                                      radius: 41,
                                      backgroundColor: Colors.white,
                                    ),
                                  ),
                                  CircleAvatar(
                                    radius: 38,
                                    backgroundImage: AssetImage(
                                      "${storyData[index]["logo"]}",
                                    ),
                                  ),
                                  if (storyData[index]["isLive"])
                                    Positioned(
                                      bottom: -3,
                                      child: Container(
                                        color: Colors.pink,
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 5, vertical: 4),
                                        child: const Text(
                                          "LIVE",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 10),
                                        ),
                                      ),
                                    )
                                ],
                              ),
                              const SizedBox(height: 8),
                              Text(storyData[index]["firstName"])
                            ],
                          ),
                        );
                      })
                    ],
                  ),
                ),
              )),
        ],
      ),
    );
  }
}
