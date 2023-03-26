// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'OverviewScroll.dart';
import 'ProgressCard.dart';

class ProjectsPage extends StatelessWidget {
  const ProjectsPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Container(
          color: const Color.fromRGBO(242, 244, 255, 1),
          padding: const EdgeInsets.all(0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "Hello,",
                              style: GoogleFonts.montserrat(
                                color: Colors.black,
                                fontSize: 25,
                              ),
                            ),
                            TextSpan(
                              text: " Magesh!",
                              style: GoogleFonts.montserrat(
                                color: Colors.black,
                                fontSize: 25,
                                fontWeight: FontWeight.w600,
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: 40,
                        height: 40,
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 255, 123, 123),
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                        ),
                        child: const Icon(Icons.person, color: Colors.white),
                      ),
                    ],
                  ),
                  Text(
                    "Have a nice day!\n\nHere are the projects available ",
                    style: GoogleFonts.montserrat(
                      color: Colors.grey,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 0, bottom: 0, left: 20, right: 0),
              child: OverView(),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Progress",
                    style: GoogleFonts.montserrat(
                      color: const Color.fromARGB(255, 254, 125, 125),
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
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
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
