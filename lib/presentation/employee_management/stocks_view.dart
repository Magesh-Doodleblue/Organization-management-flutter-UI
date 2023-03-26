import 'package:final_task_warpe/presentation/employee_management/utils.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import 'const.dart';
import 'controllers/stocks_controller.dart';
import 'custom_widgets.dart';
import 'data/model_stock.dart';
import 'data/test_data.dart';

class StocksView extends GetView<StocksController> {
  StocksView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
            child: Column(
          children: [getStockTable()],
        )),
      ),
    );
  }

  double bodySize = Get.width - getSideBarSize();

  getStockTable() {
    listStocks = [];
    for (var e in sampleStock) {
      var tc = StockModel();
      tc.fromJson(e);
      listStocks.add(tc);
    }
    var topRow = const Text('Stock Summary',
        style: TextStyle(fontSize: 24, color: Colors.pink));

    Column tcList = Column(
        children: List.generate(listStocks.length, (index) {
      StockModel tc = listStocks[index];
      return Row(
        children: [
          getTableCell((index % 2) == 0 ? Colors.white : Colors.grey.shade100,
              bodySize * 0.125, Text(tc.name)),
          getTableCell((index % 2) == 0 ? Colors.white : Colors.grey.shade100,
              bodySize * 0.2, Text(tc.code.toString())),
          getTableCell((index % 2) == 0 ? Colors.white : Colors.grey.shade100,
              bodySize * 0.1, Text(tc.qr_code.toString())),
          getTableCell((index % 2) == 0 ? Colors.white : Colors.grey.shade100,
              bodySize * 0.1, Text(tc.price.toString())),
          getTableCell((index % 2) == 0 ? Colors.white : Colors.grey.shade100,
              bodySize * 0.1, Text(tc.stack.toString())),
          getTableCell((index % 2) == 0 ? Colors.white : Colors.grey.shade100,
              bodySize * 0.1, Text(tc.location)),
          getTableCell((index % 2) == 0 ? Colors.white : Colors.grey.shade100,
              bodySize * 0.1, Text(tc.description)),
        ],
      );
    }));

    SizedBox pagination = SizedBox(
      width: bodySize * 0.7,
      child: Row(
        children: [
          InkWell(
            child: Row(
              children: [
                Icon(MdiIcons.plusBoxOutline, color: pink),
                horizontalSpaceSmall,
                Text('ADD STOCKS',
                    style: getDonegalOneStyle(size: 16, color: pink))
              ],
            ),
          ),
          const Spacer(),
          const Text('items per page 8', style: TextStyle(fontSize: 12)),
          horizontalSpaceTiny,
          const Icon(MdiIcons.chevronDown, size: 18),
          horizontalSpaceRegular,
          const Text('1 - 8 of 18', style: TextStyle(fontSize: 12)),
          horizontalSpaceRegular,
          const Icon(MdiIcons.chevronLeft, size: 18),
          horizontalSpaceSmall,
          const Icon(MdiIcons.chevronRight, size: 18),
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
                bodySize * 0.125, const Text('NAME')),
            getTableCell(Colors.pink.shade100.withOpacity(0.5), bodySize * 0.2,
                const Text('CODE')),
            getTableCell(Colors.pink.shade100.withOpacity(0.5), bodySize * 0.1,
                const Text('QR CODE')),
            getTableCell(Colors.pink.shade100.withOpacity(0.5), bodySize * 0.1,
                const Text('PRICE')),
            getTableCell(Colors.pink.shade100.withOpacity(0.5), bodySize * 0.1,
                const Text('STACK')),
            getTableCell(Colors.pink.shade100.withOpacity(0.5), bodySize * 0.1,
                const Text('LOCATION')),
            getTableCell(Colors.pink.shade100.withOpacity(0.5), bodySize * 0.1,
                const Text('DESCRIPTION')),
          ],
        ));
    return Container(
      padding: const EdgeInsets.all(32),
      width: bodySize,
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
      ),
      child: Column(
        children: [
          getTopRow(),
          verticalSpaceRegular,
          Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24)),
              elevation: 4,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(32.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      topRow,
                      verticalSpaceLarge,
                      tableHeader,
                      tcList,
                      verticalSpaceRegular,
                      pagination
                    ]),
              )),
        ],
      ),
    );
  }
}
