// ignore_for_file: file_names, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Categorcard extends StatelessWidget {
  const Categorcard({
    Key? key,
    required this.CategoryText,
    required this.isActive,
  }) : super(key: key);
  final String CategoryText;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(5),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: !isActive
              ? const Color.fromRGBO(221, 229, 249, 1)
              : const Color.fromRGBO(130, 0, 255, 1),
          borderRadius: const BorderRadius.all(Radius.circular(5)),
        ),
        child: Text(
          CategoryText,
          style: GoogleFonts.montserrat(
            color: !isActive ? Colors.grey : Colors.white,
            fontSize: 12,
          ),
        ));
  }
}
