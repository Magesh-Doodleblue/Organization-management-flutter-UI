import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PaySlip extends StatelessWidget {
  const PaySlip({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: getPayslip(),
      ),
    );
  }

  getPayslip() {
    return Container(
      padding: const EdgeInsets.all(32),
      width: 600,
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
      ),
      child: Center(
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
          width: Get.width * 0.75,
          padding: const EdgeInsets.all(32),
          child: SizedBox(
            width: Get.width * 0.5,
            child: SingleChildScrollView(
              child: Column(children: [
                const Text('GST CALCULATOR',
                    style: TextStyle(fontSize: 40, color: Colors.pink)),
                const SizedBox(height: 18.0),
                getText('Item Name'),
                const SizedBox(height: 18.0),
                getText('Category'),
                const SizedBox(height: 18.0),
                getText('Amount'),
                const SizedBox(height: 18.0),
                getText('GST'),
                const SizedBox(height: 18.0),
                getText('Total Amount'),
                const SizedBox(height: 18.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    getBtn('PRINT'),
                  ],
                )
              ]),
            ),
          ),
        ),
      ),
    );
  }

  getText(text, {width = 0.3}) {
    return Container(
      width: Get.width * width,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: const Color(0xffE9E9E9)),
      child: Text(text),
    );
  }

  getBtn(text) {
    return InkWell(
        onTap: () {},
        child: Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: Colors.pink),
          child: Text(text,
              style: const TextStyle(fontSize: 24, color: Colors.white)),
        ));
  }
}
