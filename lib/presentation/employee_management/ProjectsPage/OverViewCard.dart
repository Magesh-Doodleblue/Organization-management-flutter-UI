// ignore_for_file: depend_on_referenced_packages, file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class OvervewCard extends StatelessWidget {
  const OvervewCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.only(left: 0, right: 20, top: 5, bottom: 5),
      width: 180,
      height: 250,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: const Color.fromARGB(255, 255, 120, 120)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                width: 40,
                height: 40,
                margin: const EdgeInsets.only(right: 10),
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: const Icon(Icons.person,
                    color: Color.fromARGB(255, 0, 0, 0)),
              ),
              Text(
                "  Project",
                style: GoogleFonts.montserrat(color: Colors.white),
              ),
            ],
          ),
          Text(
            "Back End Development",
            style: GoogleFonts.montserrat(color: Colors.white, fontSize: 15),
          ),
          Text(
            DateFormat.MMMd().format((DateTime.now())),
            style: GoogleFonts.montserrat(color: Colors.white, fontSize: 15),
          )
        ],
      ),
    );
  }
}
