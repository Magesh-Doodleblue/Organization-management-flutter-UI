import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'inventory_dashboard.dart';
import 'Job_portal/job_master.dart';
import 'user/user_dashboard.dart';

class GuestHomeScreen extends StatelessWidget {
  const GuestHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Image.asset("assets/Vector.png"),
            Center(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      width: 400,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              const Spacer(),
                              Image.asset("assets/logo.png"),
                              const Spacer(),
                              Text(
                                "Welcome to\nBubble Tree",
                                style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey[700]),
                              ),
                              const Spacer(
                                flex: 3,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            "What do you want to see?",
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey[700]),
                          ),
                          const SizedBox(height: 32),
                          SizedBox(
                            width: MediaQuery.of(context).size.width,
                            height: 64,
                            child: ElevatedButton(
                              onPressed: () {
                                Get.to(() => const JobMaster());
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    const Color.fromARGB(255, 255, 66, 66),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16),
                                ),
                              ),
                              child: const Text("Available Job"),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width,
                            height: 64,
                            child: ElevatedButton(
                              onPressed: () {
                                Get.to(() => const UserMainScreen());
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    const Color.fromARGB(255, 255, 66, 66),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16),
                                ),
                              ),
                              child: const Text("Inventory"),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width,
                            height: 64,
                            child: ElevatedButton(
                              onPressed: () {
                                Get.to(() => UserDashboard());
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    const Color.fromARGB(255, 255, 66, 66),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16),
                                ),
                              ),
                              child: const Text("Dashboard"),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
