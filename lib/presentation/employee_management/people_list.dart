import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import 'const.dart';
import 'custom_widgets.dart';
import 'data/model_employees.dart';
import 'data/test_data.dart';

class PeopleView extends GetView<PeopleController> {
  const PeopleView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: getEmployeesTable(),
      ),
    );
  }

  getEmployeesTable() {
    TextEditingController tecSearchBox = TextEditingController();
    Row getTopRow() {
      Container searchBox = Container(
        padding: const EdgeInsets.only(top: 4, left: 4, bottom: 4),
        width: 600,
        height: 30,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(6)),
        child: TextField(
          controller: tecSearchBox,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.only(top: -12),
            hintText: 'Search',
            alignLabelWithHint: true,
            hintStyle: getJaldiStyle(size: 16),
            suffixIcon: const Icon(Icons.search),
            border: InputBorder.none,
          ),
        ),
      );
      Card profile = Card(
        elevation: 4,
        child: InkWell(
          onTap: () {},
          child: const Padding(
            padding: EdgeInsets.all(2.0),
            child: Icon(Icons.person_outline, color: colorTitleText),
          ),
        ),
      );
      Card settings = Card(
        elevation: 4,
        child: InkWell(
          onTap: () {},
          child: const Padding(
            padding: EdgeInsets.all(2.0),
            child: Icon(Icons.settings_outlined, color: colorTitleText),
          ),
        ),
      );
      return Row(
        children: [
          const Spacer(),
          searchBox,
          horizontalSpaceMedium,
          profile,
          settings
        ],
      );
    }

    double bodySize = Get.width - getSideBarSize();

    listEmployees = [];
    for (var e in sampleEmployees) {
      var emp = Employee();
      emp.fromJson(e);
      listEmployees.add(emp);
    }
    var topRow = Row(
      children: [
        Text('PEOPLE',
            style: GoogleFonts.jaldi(
                fontWeight: FontWeight.w400,
                fontSize: 32,
                color: const Color(0xFF5C5C5C))),
        const Spacer(),
        InkWell(
            onTap: () {},
            child: Row(children: [
              Icon(Icons.add_circle_outline, color: pink),
              horizontalSpaceTiny,
              Text('Add Employee',
                  style: GoogleFonts.jaldi(
                      fontWeight: FontWeight.w400, color: pink, fontSize: 20))
            ]))
      ],
    );
    Row title = Row(
      children: [
        Column(children: [
          Text('NAME',
              style: GoogleFonts.donegalOne(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  color: colorTitleText)),
          Container(color: Colors.black, height: 2, width: 60)
        ]),
        const Spacer(),
        Column(children: [
          Text('LOCATION',
              style: GoogleFonts.donegalOne(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  color: colorTitleText)),
          Container(color: Colors.black, height: 2, width: 110)
        ])
      ],
    );
    Column empList = Column(
        children: List.generate(listEmployees.length, (index) {
      Employee emp = listEmployees[index];
      return InkWell(
        onTap: () {},
        child: Row(
          children: [
            Container(
              color: (index % 2) == 0
                  ? Colors.white
                  : Colors.pinkAccent.shade100.withOpacity(0.1),
              padding: const EdgeInsets.all(8.0),
              height: 66,
              child: Center(
                child: CircleAvatar(
                  radius: 15,
                  backgroundImage: NetworkImage(emp.impUrl),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(4),
              color: (index % 2) == 0
                  ? Colors.white
                  : Colors.pinkAccent.shade100.withOpacity(0.1),
              width: bodySize * 0.3 - 52,
              height: 66,
              child: Row(children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(emp.name,
                        style: getDonegalOneStyle(size: 20, height: 25)),
                    Text(emp.team,
                        style: getDonegalOneStyle(
                            color: Colors.pink, size: 12, height: 15)),
                    Text(emp.email,
                        style: getDonegalOneStyle(size: 14, height: 17.5))
                  ],
                ),
                horizontalSpaceTiny,
              ]),
            ),
            Container(
              padding: const EdgeInsets.all(4),
              color: (index % 2) == 0
                  ? Colors.white
                  : Colors.pinkAccent.shade100.withOpacity(0.1),
              width: bodySize * 0.7 - 100,
              height: 66,
              child: Row(
                children: [
                  Column(
                    children: [
                      const Spacer(),
                      Text(emp.phone,
                          style: getDonegalOneStyle(size: 13, height: 16.25))
                    ],
                  ),
                  const Spacer(),
                  Center(
                    child: Text(emp.location,
                        style: getDonegalOneStyle(size: 20, height: 25)),
                  )
                ],
              ),
            )
          ],
        ),
      );
    }));

    SizedBox pagination = SizedBox(
      width: Get.width * 0.7,
      child: Row(
        children: [
          const Spacer(),
          Text('items per page 8',
              style: getDonegalOneStyle(
                  size: 16, color: colorTitleText.withOpacity(0.5))),
          const SizedBox(width: 5.0),
          Icon(MdiIcons.chevronDown,
              size: 18, color: colorTitleText.withOpacity(0.5)),
          const SizedBox(width: 5.0),
          Text('1 - 8 of 18',
              style: getDonegalOneStyle(
                  size: 16, color: colorTitleText.withOpacity(0.5))),
          const SizedBox(width: 5.0),
          Icon(MdiIcons.chevronLeft,
              size: 18, color: colorTitleText.withOpacity(0.5)),
          const SizedBox(width: 5.0),
          Icon(MdiIcons.chevronRight,
              size: 18, color: colorTitleText.withOpacity(0.5)),
        ],
      ),
    );
    return Container(
      padding: const EdgeInsets.all(32),
      width: bodySize,
      decoration: BoxDecoration(
        color: Colors.pinkAccent.shade100.withOpacity(0.1),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            getTopRow(),
            const SizedBox(height: 28.0),
            Container(
              padding: const EdgeInsets.all(20),
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: Column(
                children: [
                  topRow,
                  const SizedBox(height: 18.0),
                  title,
                  empList,
                  const SizedBox(height: 18.0),
                  pagination
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PeopleController extends GetxController {
  final count = 0.obs;

  @override
  void onClose() {}
  void increment() => count.value++;
}
