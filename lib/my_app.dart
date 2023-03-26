import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'presentation/opening_screen/opening_screen.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      // home: EmployeeHomePage(),

      home: FirstSplashScreen(),
      // home: PageViewer(),
    );
  }
}
