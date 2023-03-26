// ignore_for_file: non_constant_identifier_names, avoid_print

import 'package:flutter/material.dart';

import 'ProjectsPage/ProjectsPage.dart';
import 'TasksPage/TasksPage.dart';
import 'pdf_view.dart';

class EmployeeHomePage extends StatefulWidget {
  const EmployeeHomePage({Key? key}) : super(key: key);

  @override
  State<EmployeeHomePage> createState() => _EmployeeHomePageState();
}

class _EmployeeHomePageState extends State<EmployeeHomePage> {
  int _selectedIndex = 0;
  void _onIndexChange(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _Pages = [
    const ProjectsPage(),
    TasksPage(
      Goback: (int index) {
        print(index);
      },
    ),
    const PdfViewer(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _Pages.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 1,
        type: BottomNavigationBarType.shifting,
        iconSize: 25,
        selectedItemColor: const Color.fromARGB(255, 255, 120, 120),
        unselectedItemColor: Colors.grey.shade400,
        currentIndex: _selectedIndex,
        onTap: _onIndexChange,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_rounded), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_month_rounded), label: "Tasks"),
          BottomNavigationBarItem(
              icon: Icon(Icons.attach_email), label: "Documentation"),
        ],
      ),
    );
  }
}
