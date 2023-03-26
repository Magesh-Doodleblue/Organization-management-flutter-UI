import 'package:final_task_warpe/presentation/employee_management/time_card/controllers/time_card_controller.dart';
import 'package:final_task_warpe/presentation/employee_management/utils.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import 'const.dart';
import 'custom_widgets.dart';
import 'data/model_time_card.dart';
import 'data/test_data.dart';

class TimeCardView extends GetView<TimeCardController> {
  const TimeCardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              getEmployeesTable(),
            ],
          ),
        ),
      ),
    );
  }

  getEmployeesTable() {
    double bodySize = Get.width - getSideBarSize();
    listTimeCard = [];
    for (var e in sampleTimeCard) {
      var tc = TimeCard();
      tc.fromJson(e);
      listTimeCard.add(tc);
    }
    var topRow = const Text('Time Card',
        style: TextStyle(fontSize: 24, color: Colors.pink));
    Row title = Row(
      children: [
        Column(children: [
          const Text('NAME', style: TextStyle(fontSize: 18)),
          Container(color: Colors.black, height: 2, width: 45)
        ]),
        const Spacer(),
        Column(children: [
          const Text('LOCATION', style: TextStyle(fontSize: 18)),
          Container(color: Colors.black, height: 2, width: 80)
        ])
      ],
    );

    Column tcList = Column(
        children: List.generate(listTimeCard.length, (index) {
      TimeCard tc = listTimeCard[index];
      return Row(
        children: [
          getTableCell((index % 2) == 0 ? Colors.white : Colors.grey.shade100,
              bodySize * 0.125, Text(tc.date)),
          getTableCell((index % 2) == 0 ? Colors.white : Colors.grey.shade100,
              bodySize * 0.15, Text(tc.name)),
          getTableCell((index % 2) == 0 ? Colors.white : Colors.grey.shade100,
              bodySize * 0.1, Text(tc.checkin)),
          getTableCell((index % 2) == 0 ? Colors.white : Colors.grey.shade100,
              bodySize * 0.1, Text(tc.checkout)),
          getTableCell((index % 2) == 0 ? Colors.white : Colors.grey.shade100,
              bodySize * 0.1, Text(tc.mealBreak)),
          getTableCell((index % 2) == 0 ? Colors.white : Colors.grey.shade100,
              bodySize * 0.1, Text(tc.hoursRegular)),
          getTableCell((index % 2) == 0 ? Colors.white : Colors.grey.shade100,
              bodySize * 0.1, Text(tc.overTime)),
          getTableCell(
              (index % 2) == 0 ? Colors.white : Colors.grey.shade100,
              bodySize * 0.1,
              Switch(
                value: false,
                onChanged: (val) {},
              )),
        ],
      );
    }));

    SizedBox pagination = SizedBox(
      width: bodySize * 0.7,
      child: Row(
        children: const [
          Spacer(),
          Text('items per page 8', style: TextStyle(fontSize: 12)),
          horizontalSpaceTiny,
          Icon(MdiIcons.chevronDown, size: 18),
          horizontalSpaceRegular,
          Text('1 - 8 of 18', style: TextStyle(fontSize: 12)),
          horizontalSpaceRegular,
          Icon(MdiIcons.chevronLeft, size: 18),
          horizontalSpaceSmall,
          Icon(MdiIcons.chevronRight, size: 18),
        ],
      ),
    );
    Container tableHeader = Container(
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10), topRight: Radius.circular(10))),
        child: Row(
          children: [
            getTableCell(Colors.pink.shade100.withOpacity(0.5),
                bodySize * 0.125, const Text('DATE')),
            getTableCell(Colors.pink.shade100.withOpacity(0.5), bodySize * 0.15,
                const Text('NAME')),
            getTableCell(Colors.pink.shade100.withOpacity(0.5), bodySize * 0.1,
                const Text('SHIFT\nCHECK IN')),
            getTableCell(Colors.pink.shade100.withOpacity(0.5), bodySize * 0.1,
                const Text('SHIFT\nCHECK OUT')),
            getTableCell(Colors.pink.shade100.withOpacity(0.5), bodySize * 0.1,
                const Text('MEAL\nBREAK')),
            getTableCell(Colors.pink.shade100.withOpacity(0.5), bodySize * 0.1,
                const Text('HOURS\nREGULAR')),
            getTableCell(Colors.pink.shade100.withOpacity(0.5), bodySize * 0.1,
                const Text('OVER\nTIME')),
            getTableCell(Colors.pink.shade100.withOpacity(0.5), bodySize * 0.1,
                const Text('APPROVAL')),
          ],
        ));
    return Container(
      padding: const EdgeInsets.all(32),
      width: bodySize,
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
      ),
      child: Column(children: [
        getTopRow(),
        verticalSpaceMedium,
        Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
          elevation: 4,
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(32.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                topRow,
                verticalSpaceMedium,
                tableHeader,
                tcList,
                verticalSpaceRegular,
                pagination
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
