// ignore_for_file: non_constant_identifier_names, depend_on_referenced_packages, file_names

import 'package:date_picker_timeline/date_picker_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

import '../AddNewTask/AddNewTask.dart';
import '../ProjectsPage/ProgressCard.dart';

class TasksPage extends StatefulWidget {
  const TasksPage({
    Key? key,
    required this.Goback,
  }) : super(key: key);
  final void Function(int) Goback;
  @override
  State<TasksPage> createState() => _TasksPageState();
}

class _TasksPageState extends State<TasksPage> {
  DateTime _selectedDate = DateTime.now();
  void _onDateChange(DateTime date) {
    setState(() {
      _selectedDate = date;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: const Color.fromRGBO(242, 244, 255, 1),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.all(25),
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50),
                    )),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            widget.Goback(1);
                          },
                          child: const Icon(
                            Icons.arrow_back_rounded,
                            color: Colors.black,
                            size: 30,
                          ),
                        ),
                        const Icon(
                          Icons.search_rounded,
                          color: Colors.black,
                          size: 30,
                        )
                      ],
                    ),
                    const SizedBox(height: 25),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          DateFormat('MMM, d').format(_selectedDate),
                          style: GoogleFonts.montserrat(
                            color: Colors.black,
                            fontSize: 25,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Get.to(() => const AddNewTask());
                          },
                          child: Container(
                            padding: const EdgeInsets.all(15),
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 123, 0, 245),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Icon(
                                  Icons.add,
                                  color: Colors.white,
                                  size: 20,
                                ),
                                Text(
                                  "Add task",
                                  style: GoogleFonts.montserrat(
                                    color: Colors.white,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 25),
                    SizedBox(
                      height: 90,
                      child: DatePicker(
                        DateTime.now(),
                        initialSelectedDate: _selectedDate,
                        selectionColor: const Color.fromARGB(255, 255, 92, 71),
                        onDateChange: _onDateChange,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Task",
                      style: GoogleFonts.montserrat(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Column(children: [
                        ProgressCard(
                            ProjectName: "Calendly",
                            days: "10",
                            CompletedPercent: 70),
                        ProgressCard(
                            ProjectName: "News App",
                            days: "19",
                            CompletedPercent: 30),
                        ProgressCard(
                            ProjectName: "Task Force",
                            days: "21",
                            CompletedPercent: 90),
                        ProgressCard(
                            ProjectName: "Ninja core",
                            days: "1",
                            CompletedPercent: 30),
                        ProgressCard(
                            ProjectName: "Kenyar pro",
                            days: "100",
                            CompletedPercent: 10),
                        ProgressCard(
                          ProjectName: "Amazon",
                          days: "37",
                          CompletedPercent: 44,
                        ),
                        ProgressCard(
                          ProjectName: "Finance App",
                          days: "40",
                          CompletedPercent: 99,
                        ),
                      ]),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
