import 'package:flutter/material.dart';

import 'left.dart';
import 'right.dart';

class UserCalendlyHome extends StatefulWidget {
  const UserCalendlyHome({super.key});

  @override
  State<UserCalendlyHome> createState() => _UserCalendlyHomeState();
}

class _UserCalendlyHomeState extends State<UserCalendlyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        foregroundColor: Colors.black,
      ),
      body: Row(
        children: const [
          UserLeftSide(),
          UserRightSide(),
        ],
      ),
    );
  }
}
