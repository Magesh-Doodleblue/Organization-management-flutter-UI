// ignore_for_file: non_constant_identifier_names, depend_on_referenced_packages, file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

import 'CategoryCard.dart';

class AddNewTask extends StatefulWidget {
  const AddNewTask({Key? key}) : super(key: key);

  @override
  State<AddNewTask> createState() => _AddNewTaskState();
}

class _AddNewTaskState extends State<AddNewTask> {
  late TextEditingController _Titlecontroller;
  late TextEditingController _Datecontroller;
  late TextEditingController _StartTime;
  late TextEditingController _EndTime;
  DateTime SelectedDate = DateTime.now();
  String Category = "Meeting";
  @override
  void initState() {
    super.initState();
    _Titlecontroller = TextEditingController();
    _Datecontroller = TextEditingController(
        text: DateFormat('EEE, MMM d, ' 'yy').format(SelectedDate));
    _StartTime =
        TextEditingController(text: DateFormat.jm().format(DateTime.now()));
    _EndTime = TextEditingController(
        text: DateFormat.jm().format(DateTime.now().add(
      const Duration(hours: 1),
    )));
  }

  _selectDate(BuildContext context) async {
    final DateTime? selected = await showDatePicker(
      context: context,
      initialDate: SelectedDate,
      firstDate: DateTime(2005),
      lastDate: DateTime(2030),
    );
    if (selected != null && selected != SelectedDate) {
      setState(() {
        SelectedDate = selected;
        _Datecontroller.text = DateFormat('EEE, MMM d, ' 'yy').format(selected);
      });
    }
  }

  _selectTime(BuildContext context, String Timetype) async {
    final TimeOfDay? result =
        await showTimePicker(context: context, initialTime: TimeOfDay.now());
    if (result != null) {
      setState(() {
        if (Timetype == "StartTime") {
          _StartTime.text = result.format(context);
        } else {
          _EndTime.text = result.format(context);
        }
      });
    }
  }

  _SetCategory(String Category) {
    setState(() {
      this.Category = Category;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Container(
          color: const Color.fromARGB(255, 255, 108, 108),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.only(
                      left: 10, right: 10, top: 20, bottom: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: const Icon(Icons.arrow_back,
                            size: 30, color: Colors.white),
                      ),
                      const SizedBox(
                        width: 50,
                      ),
                      Text(
                        "Create New Project",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.montserrat(
                          color: Colors.white,
                          fontSize: 20,
                          decoration: TextDecoration.none,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 20, right: 20, top: 10, bottom: 10),
                  child: TextFormField(
                    controller: _Titlecontroller,
                    cursorColor: Colors.white,
                    style: GoogleFonts.montserrat(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                    decoration: InputDecoration(
                      labelText: "Title",
                      hintText: "Project Title",
                      enabledBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      focusedBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      fillColor: Colors.white,
                      labelStyle: GoogleFonts.montserrat(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 20, right: 20, top: 10, bottom: 10),
                  child: TextFormField(
                    controller: _Datecontroller,
                    cursorColor: Colors.white,
                    style: GoogleFonts.montserrat(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                    readOnly: true,
                    decoration: InputDecoration(
                      labelText: "Date",
                      suffixIcon: GestureDetector(
                        onTap: () {
                          _selectDate(context);
                        },
                        child: const Icon(
                          Icons.calendar_month_outlined,
                          color: Colors.white,
                        ),
                      ),
                      enabledBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      focusedBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      fillColor: Colors.white,
                      labelStyle: GoogleFonts.montserrat(
                        color: Colors.white,
                        fontSize: 10,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.7,
                  margin: const EdgeInsets.only(top: 40),
                  padding: const EdgeInsets.only(
                      left: 20, right: 20, top: 20, bottom: 20),
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      )),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10, bottom: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.2,
                              child: TextField(
                                readOnly: true,
                                controller: _StartTime,
                                decoration: InputDecoration(
                                  labelText: "Date",
                                  suffixIcon: GestureDetector(
                                    onTap: () {
                                      _selectTime(context, "StartTime");
                                    },
                                    child: const Icon(
                                      Icons.alarm,
                                      color: Colors.black26,
                                    ),
                                  ),
                                  enabledBorder: const UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.black26),
                                  ),
                                  focusedBorder: const UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.black26),
                                  ),
                                  fillColor: Colors.black26,
                                  labelStyle: GoogleFonts.montserrat(
                                    color: Colors.black26,
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.2,
                              child: TextField(
                                readOnly: true,
                                controller: _EndTime,
                                decoration: InputDecoration(
                                  labelText: "Date",
                                  suffixIcon: GestureDetector(
                                    onTap: () {
                                      _selectTime(context, "EndTime");
                                    },
                                    child: const Icon(
                                      Icons.alarm,
                                      color: Colors.black26,
                                    ),
                                  ),
                                  enabledBorder: const UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.black26),
                                  ),
                                  focusedBorder: const UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.black26),
                                  ),
                                  fillColor: Colors.black26,
                                  labelStyle: GoogleFonts.montserrat(
                                    color: Colors.black26,
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10, bottom: 20),
                        child: TextFormField(
                          keyboardType: TextInputType.multiline,
                          minLines: 1,
                          maxLines: 8,
                          cursorColor: Colors.black26,
                          style: GoogleFonts.montserrat(
                            color: Colors.black,
                            fontSize: 15,
                          ),
                          decoration: InputDecoration(
                            labelText: "Description",
                            enabledBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.black26),
                            ),
                            focusedBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.black26),
                            ),
                            fillColor: Colors.black26,
                            labelStyle: GoogleFonts.montserrat(
                              color: Colors.black26,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(top: 10, bottom: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Category",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.montserrat(
                                color: Colors.black,
                                fontSize: 20,
                                decoration: TextDecoration.none,
                              ),
                            ),
                            Wrap(
                              alignment: WrapAlignment.spaceEvenly,
                              crossAxisAlignment: WrapCrossAlignment.start,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    _SetCategory('Marketting');
                                  },
                                  child: Categorcard(
                                    CategoryText: 'Marketting',
                                    isActive: Category == 'Marketting',
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    _SetCategory('UK');
                                  },
                                  child: Categorcard(
                                    CategoryText: 'UK',
                                    isActive: Category == 'UK',
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    _SetCategory('Study');
                                  },
                                  child: Categorcard(
                                    CategoryText: 'Study',
                                    isActive: Category == 'Study',
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    _SetCategory('Sports');
                                  },
                                  child: Categorcard(
                                    CategoryText: 'Sports',
                                    isActive: Category == 'Sports',
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    _SetCategory('Development');
                                  },
                                  child: Categorcard(
                                    CategoryText: 'Development',
                                    isActive: Category == 'Development',
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    _SetCategory('Family');
                                  },
                                  child: Categorcard(
                                    CategoryText: 'IT',
                                    isActive: Category == 'IT',
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    _SetCategory('Urgent');
                                  },
                                  child: Categorcard(
                                    CategoryText: 'Urgent',
                                    isActive: Category == 'Urgent',
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 100,
                      ),
                      Container(
                        padding: const EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color.fromARGB(255, 255, 92, 71),
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          "Create Task",
                          style: GoogleFonts.montserrat(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
