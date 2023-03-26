// import 'package:datepicker_dropdown/datepicker_dropdown.dart';
// import 'package:final_task_warpe/presentation/employee_management/custom_widgets.dart';
// import 'package:flutter/material.dart';

// import 'package:get/get.dart';
// import 'package:jiffy/jiffy.dart';
// import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

// import 'const.dart';
// import 'data/model_employees.dart';
// import 'emp_details_controller.dart';

// enum Tabs { Profile, Pay, Accounts, Tax }

// class EmpDetailsView extends GetView<EmpDetailsController> {
//   Tabs showingTab = Tabs.Profile;

//   EmpDetailsView({super.key});
//   @override
//   Widget build(BuildContext context) {
//     updateEmployees();
//     return Scaffold(
//       body: Center(
//         child: getDetails(),
//       ),
//     );
//   }

//   TextEditingController tecSearchBox = TextEditingController();
//   Row getTopRow() {
//     Container searchBox = Container(
//       padding: const EdgeInsets.only(top: 4, left: 4, bottom: 4),
//       width: Get.width * 0.25,
//       height: 30,
//       decoration: BoxDecoration(
//           color: Colors.white, borderRadius: BorderRadius.circular(6)),
//       child: TextField(
//         controller: tecSearchBox,
//         decoration: InputDecoration(
//           contentPadding: const EdgeInsets.only(top: -12),
//           hintText: 'Search',
//           alignLabelWithHint: true,
//           hintStyle: getJaldiStyle(size: 16),
//           suffixIcon: const Icon(Icons.search),
//           border: InputBorder.none,
//         ),
//       ),
//     );
//     Card profile = Card(
//       elevation: 4,
//       child: InkWell(
//         onTap: () {},
//         child: const Padding(
//           padding: EdgeInsets.all(2.0),
//           child: Icon(Icons.person_outline, color: colorTitleText),
//         ),
//       ),
//     );
//     Card settings = Card(
//       elevation: 4,
//       child: InkWell(
//         onTap: () {},
//         child: const Padding(
//           padding: EdgeInsets.all(2.0),
//           child: Icon(Icons.settings_outlined, color: colorTitleText),
//         ),
//       ),
//     );
//     return Row(
//       children: [
//         const Spacer(),
//         searchBox,
//         horizontalSpaceMedium,
//         profile,
//         settings
//       ],
//     );
//   }

//   double bodySize = Get.width - getSideBarSize();
//   getDetails() {
//     int viewingEmployeeIndex = 0;
//     Employee e = listEmployees[viewingEmployeeIndex];
//     return Container(
//       padding: const EdgeInsets.all(32),
//       width: bodySize,
//       decoration: BoxDecoration(
//         color: Colors.pinkAccent.shade100.withOpacity(0.1),
//       ),
//       child: Container(
//         color: Colors.white,
//         width: Get.width * 0.7,
//         padding: const EdgeInsets.all(24),
//         child: SingleChildScrollView(
//           child: ValueListenableBuilder(
//               valueListenable: controller.notifyEmpDetails,
//               builder: (context, _, __) {
//                 return Column(children: [
//                   if (showingTab == Tabs.Profile) getTopRow(),
//                   Row(
//                     children: [
//                       getLeftSection(e),
//                       horizontalSpaceRegular,
//                       if (showingTab == Tabs.Profile) getRightSection(e)
//                     ],
//                   )
//                 ]);
//               }),
//         ),
//       ),
//     );
//   }

//   getPayTab(e) {
//     return SizedBox(
//         height: Get.height,
//         width: Get.width * 0.8,
//         // color: Colors.pinkAccent.shade100.withOpacity(0.1),
//         child: Padding(
//           padding: EdgeInsets.only(left: Get.width * 0.2),
//           child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Center(
//                   child: Text(
//                     'PAYSLIP',
//                     style: getDonegalOneStyle(size: 40, color: pink),
//                   ),
//                 ),
//                 verticalSpaceMedium,
//                 Text(
//                   'Pay Period',
//                   style: getDonegalOneStyle(size: 24),
//                   textAlign: TextAlign.left,
//                 ),
//                 verticalSpaceSmall,
//                 DropdownDatePicker(
//                   inputDecoration: InputDecoration(
//                       enabledBorder: const OutlineInputBorder(
//                         borderSide: BorderSide(color: Colors.grey, width: 1.0),
//                       ),
//                       border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(10))), // optional
//                   isDropdownHideUnderline: true, // optional
//                   isFormValidator: true, // optional
//                   showDay: false,
//                   startYear: 2020, // optional
//                   endYear: 2100, // optional
//                   width: 10, // optional
//                   // selectedDay: 14, // optional
//                   selectedMonth: 2, // optional
//                   selectedYear: 2023, // optional
//                   onChangedDay: (value) => print('onChangedDay: $value'),
//                   onChangedMonth: (value) => print('onChangedMonth: $value'),
//                   onChangedYear: (value) => print('onChangedYear: $value'),
//                   //boxDecoration: BoxDecoration(
//                   // border: Border.all(color: Colors.grey, width: 1.0)), // optional
//                   // showDay: false,// optional
//                   // dayFlex: 2,// optional
//                   // locale: "zh_CN",// optional
//                   // hintDay: 'Day', // optional
//                   // hintMonth: 'Month', // optional
//                   // hintYear: 'Year', // optional
//                   // hintTextStyle: TextStyle(color: Colors.grey), // optional
//                 ),
//                 verticalSpaceLarge,
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.end,
//                   children: [
//                     ElevatedButton(
//                       onPressed: () {},
//                       style: ElevatedButton.styleFrom(backgroundColor: pink),
//                       child: Padding(
//                         padding: const EdgeInsets.all(8.0),
//                         child: Text('View Payslip',
//                             style: getDonegalOneStyle(
//                                 color: Colors.white, size: 20)),
//                       ),
//                     ),
//                     horizontalSpaceMedium,
//                     ElevatedButton(
//                       onPressed: () {},
//                       style: ElevatedButton.styleFrom(backgroundColor: pink),
//                       child: Padding(
//                         padding: const EdgeInsets.all(8.0),
//                         child: Text('View PDF',
//                             style: getDonegalOneStyle(
//                                 color: Colors.white, size: 20)),
//                       ),
//                     )
//                   ],
//                 )
//               ]),
//         ));
//   }

//   getProfileTab(e) {
//     return SizedBox(
//         width: Get.width * 0.5,
//         child: Column(children: [
//           getAddresses(e),
//           verticalSpaceRegular,
//           getBankAccounts(e),
//           verticalSpaceRegular,
//           getEmployementHistory(e)
//         ]));
//   }

//   getTab(e) {
//     switch (showingTab) {
//       case Tabs.Profile:
//         return getProfileTab(e);
//       case Tabs.Pay:
//         return getPayTab(e);
//       case Tabs.Accounts:
//       case Tabs.Tax:
//         break;
//     }
//   }

//   getLeftSection(e) {
//     return SizedBox(
//       width: Get.width * 0.5,
//       child: Builder(
//           // valueListenable: controller.notifyEmpDetails,
//           builder: (context) {
//         return Column(
//           mainAxisAlignment: MainAxisAlignment.start,
//           children: [
//             if (showingTab == Tabs.Profile) getNameRow(e),
//             if (showingTab == Tabs.Profile) verticalSpaceLarge,
//             if (showingTab == Tabs.Profile)
//               Divider(
//                   color: const Color(0xff0F1021).withOpacity(0.7), height: 1),
//             if (showingTab == Tabs.Profile) verticalSpaceRegular,
//             getTab(e)
//           ],
//         );
//       }),
//     );
//   }

//   getRightSection(Employee e) {
//     return Container(
//       height: Get.height,
//       decoration: BoxDecoration(
//           border: Border(
//         left: BorderSide(
//           color: const Color(0xff0F1021).withOpacity(0.7),
//           width: 1.0,
//         ),
//       )),
//       child: Column(
//         children: [
//           Padding(
//             padding: const EdgeInsets.all(16),
//             child: Column(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     children: [
//                       Icon(MdiIcons.mapMarker,
//                           color: const Color(0xff0F1021).withOpacity(0.2)),
//                       horizontalSpaceSmall,
//                       Text(e.location,
//                           style: getJaldiStyle(
//                               size: 20, color: const Color(0xff0F1021)))
//                     ],
//                   ),
//                   verticalSpaceSmall,
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     children: [
//                       Icon(MdiIcons.email,
//                           color: const Color(0xff0F1021).withOpacity(0.2)),
//                       horizontalSpaceSmall,
//                       Text(e.email,
//                           style: getJaldiStyle(
//                               size: 20, color: const Color(0xff0F1021)))
//                     ],
//                   ),
//                   verticalSpaceSmall,
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     children: [
//                       Icon(MdiIcons.phone,
//                           color: const Color(0xff0F1021).withOpacity(0.2)),
//                       horizontalSpaceSmall,
//                       Text(e.phone,
//                           style: getJaldiStyle(
//                               size: 20, color: const Color(0xff0F1021)))
//                     ],
//                   ),
//                 ]),
//           ),
//           SizedBox(
//               width: Get.width * 0.2,
//               child: const Divider(color: Color(0xff0F1021), height: 2)),
//           Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text('Employee Info',
//                   style:
//                       getJaldiStyle(size: 24, color: const Color(0xff0F1021))),
//               Padding(
//                 padding: const EdgeInsets.all(12.0),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.start,
//                       children: [
//                         SizedBox(
//                             width: Get.width * 0.05,
//                             child: Text(
//                               'DOJ',
//                               style: getJaldiStyle(
//                                   size: 20,
//                                   color:
//                                       const Color(0xff0F1021).withOpacity(0.8)),
//                             )),
//                         Text(
//                           Jiffy(e.dateOfjoining).yMMMMd,
//                           style: getJaldiStyle(
//                               size: 20, color: const Color(0xff0F1021)),
//                         )
//                       ],
//                     ),
//                     verticalSpaceTiny,
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.start,
//                       children: [
//                         SizedBox(
//                             width: Get.width * 0.05,
//                             child: Text(
//                               'ROLE',
//                               style: getJaldiStyle(
//                                   size: 20,
//                                   color:
//                                       const Color(0xff0F1021).withOpacity(0.8)),
//                             )),
//                         Text(
//                           e.role,
//                           style: getJaldiStyle(
//                               size: 20, color: const Color(0xff0F1021)),
//                         )
//                       ],
//                     ),
//                     verticalSpaceTiny,
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.start,
//                       children: [
//                         SizedBox(
//                             width: Get.width * 0.05,
//                             child: Text(
//                               'EMP ID',
//                               style: getJaldiStyle(
//                                   size: 20,
//                                   color:
//                                       const Color(0xff0F1021).withOpacity(0.8)),
//                             )),
//                         Text(
//                           e.empId,
//                           style: getJaldiStyle(
//                               size: 20, color: const Color(0xff0F1021)),
//                         )
//                       ],
//                     ),
//                     verticalSpaceTiny,
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.start,
//                       children: [
//                         SizedBox(
//                             width: Get.width * 0.05,
//                             child: Text(
//                               'DOB',
//                               style: getJaldiStyle(
//                                   size: 20,
//                                   color:
//                                       const Color(0xff0F1021).withOpacity(0.8)),
//                             )),
//                         Text(
//                           Jiffy(e.dob).yMMMMd,
//                           style: getJaldiStyle(
//                               size: 20, color: const Color(0xff0F1021)),
//                         )
//                       ],
//                     ),
//                     verticalSpaceTiny,
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.start,
//                       children: [
//                         SizedBox(
//                             width: Get.width * 0.05,
//                             child: Text(
//                               'GENDER',
//                               textAlign: TextAlign.start,
//                               style: getJaldiStyle(
//                                   size: 20,
//                                   color:
//                                       const Color(0xff0F1021).withOpacity(0.8)),
//                             )),
//                         Text(
//                           e.gender.name,
//                           style: getJaldiStyle(
//                               size: 20, color: const Color(0xff0F1021)),
//                         )
//                       ],
//                     ),
//                     verticalSpaceTiny,
//                   ],
//                 ),
//               )
//             ],
//           ),
//           Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text('Dependants',
//                   style:
//                       getJaldiStyle(size: 24, color: const Color(0xff0F1021))),
//               Padding(
//                 padding: const EdgeInsets.all(12.0),
//                 child: Column(
//                     children: List.generate(e.dependants.length, (index) {
//                   Dependant d = e.dependants[index];
//                   return Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.start,
//                         children: [
//                           SizedBox(
//                               width: Get.width * 0.07,
//                               child: Text(
//                                 d.relation.name,
//                                 style: getJaldiStyle(
//                                     size: 20,
//                                     color: const Color(0xff0F1021)
//                                         .withOpacity(0.8)),
//                               )),
//                           Card(
//                             elevation: 2,
//                             child: Row(
//                               mainAxisAlignment: MainAxisAlignment.start,
//                               children: [
//                                 const Icon(MdiIcons.genderMale),
//                                 Text(
//                                   d.name,
//                                   style: getJaldiStyle(
//                                       size: 20, color: const Color(0xff0F1021)),
//                                 ),
//                               ],
//                             ),
//                           )
//                         ],
//                       ),
//                       verticalSpaceTiny,
//                     ],
//                   );
//                 })),
//               )
//             ],
//           )
//         ],
//       ),
//     );
//   }

//   getEmployementHistory(Employee e) {
//     return Column(
//       children: [
//         SizedBox(
//           width: Get.width * 0.5,
//           child: Row(
//             children: [
//               Text('Employement History (0)',
//                   style:
//                       getJaldiStyle(size: 32, color: const Color(0xff0F1021))),
//               const Spacer(),
//               InkWell(
//                   onTap: () {
//                     // Get.toNamed(Routes.EMP_REG_FORM);
//                   },
//                   child: Row(children: [
//                     Icon(Icons.add_circle_outline, color: pink),
//                     horizontalSpaceTiny,
//                     Text('Add New', style: getJaldiStyle(color: pink, size: 20))
//                   ]))
//             ],
//           ),
//         ),
//         const Divider(color: Color(0xff0F1021), height: 2),
//         // Row(
//         //   mainAxisAlignment: MainAxisAlignment.start,
//         //   children: List.generate(e.bankAccounts.length, (index) {
//         //     return getAccountCard(e.bankAccounts[index]);
//         //   }),
//         // )
//       ],
//     );
//   }

//   getBankAccounts(Employee e) {
//     getAccountCard(BankAccount acc) {
//       return SizedBox(
//         width: Get.width * 0.20,
//         child: Card(
//           elevation: 2,
//           child: Padding(
//             padding: const EdgeInsets.all(12.0),
//             child:
//                 Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
//               Row(
//                 children: [
//                   Text(acc.bankName,
//                       style: getJaldiStyle(
//                           size: 20, color: const Color(0xff0F1021))),
//                   const Spacer(),
//                   if (acc.isPrimary)
//                     Container(
//                       decoration: BoxDecoration(
//                           color: const Color(0xff718BAE).withOpacity(0.2)),
//                       padding: const EdgeInsets.all(3),
//                       child: Text(
//                         'Primary',
//                         style: getJaldiStyle(size: 12),
//                       ),
//                     )
//                 ],
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(acc.ifsc,
//                         style: getJaldiStyle(
//                             size: 16, color: const Color(0xff0F1021))),
//                     Text(acc.name,
//                         style: getJaldiStyle(
//                             size: 16, color: const Color(0xff0F1021))),
//                     Text(acc.accNo,
//                         style: getJaldiStyle(
//                             size: 16, color: const Color(0xff0F1021))),
//                     Text(acc.branch,
//                         style: getJaldiStyle(
//                             size: 16, color: const Color(0xff0F1021))),
//                   ],
//                 ),
//               ),
//             ]),
//           ),
//         ),
//       );
//     }

//     return Column(
//       children: [
//         SizedBox(
//           width: Get.width * 0.5,
//           child: Row(
//             children: [
//               Text('Bank Accounts (2)',
//                   style:
//                       getJaldiStyle(size: 32, color: const Color(0xff0F1021))),
//               const Spacer(),
//               InkWell(
//                   onTap: () {
//                     // Get.toNamed(Routes.EMP_REG_FORM);
//                   },
//                   child: Row(children: [
//                     Icon(Icons.add_circle_outline, color: pink),
//                     horizontalSpaceTiny,
//                     Text('Add New', style: getJaldiStyle(color: pink, size: 20))
//                   ]))
//             ],
//           ),
//         ),
//         const Divider(color: Color(0xff0F1021), height: 2),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.start,
//           children: List.generate(e.bankAccounts.length, (index) {
//             return getAccountCard(e.bankAccounts[index]);
//           }),
//         )
//       ],
//     );
//   }

//   getAddresses(Employee e) {
//     getCurrentAddressCard() {
//       return SizedBox(
//         width: Get.width * 0.20,
//         child: Card(
//           elevation: 2,
//           child: Padding(
//             padding: const EdgeInsets.all(12.0),
//             child:
//                 Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
//               Text('CURRENT',
//                   style:
//                       getJaldiStyle(size: 24, color: const Color(0xff0F1021))),
//               Text('${e.currentAddress.addr1},',
//                   style:
//                       getJaldiStyle(size: 16, color: const Color(0xff0F1021))),
//               Text('${e.currentAddress.addr2},',
//                   style:
//                       getJaldiStyle(size: 16, color: const Color(0xff0F1021))),
//               Text('${e.currentAddress.city},',
//                   style:
//                       getJaldiStyle(size: 16, color: const Color(0xff0F1021))),
//               Text('${e.currentAddress.district},',
//                   style:
//                       getJaldiStyle(size: 16, color: const Color(0xff0F1021))),
//               Text('${e.currentAddress.state},',
//                   style:
//                       getJaldiStyle(size: 16, color: const Color(0xff0F1021))),
//               Text('${e.currentAddress.pincode},',
//                   style:
//                       getJaldiStyle(size: 16, color: const Color(0xff0F1021))),
//             ]),
//           ),
//         ),
//       );
//     }

//     getPermanentAddressCard() {
//       return SizedBox(
//         width: Get.width * 0.20,
//         child: Card(
//           elevation: 2,
//           child: Padding(
//             padding: const EdgeInsets.all(12.0),
//             child:
//                 Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
//               Text('PERMANENT',
//                   style:
//                       getJaldiStyle(size: 24, color: const Color(0xff0F1021))),
//               Text('${e.permanentAddress.addr1},',
//                   style:
//                       getJaldiStyle(size: 16, color: const Color(0xff0F1021))),
//               Text('${e.permanentAddress.addr2},',
//                   style:
//                       getJaldiStyle(size: 16, color: const Color(0xff0F1021))),
//               Text('${e.permanentAddress.city},',
//                   style:
//                       getJaldiStyle(size: 16, color: const Color(0xff0F1021))),
//               Text('${e.permanentAddress.district},',
//                   style:
//                       getJaldiStyle(size: 16, color: const Color(0xff0F1021))),
//               Text('${e.permanentAddress.state},',
//                   style:
//                       getJaldiStyle(size: 16, color: const Color(0xff0F1021))),
//               Text('${e.permanentAddress.pincode},',
//                   style:
//                       getJaldiStyle(size: 16, color: const Color(0xff0F1021))),
//             ]),
//           ),
//         ),
//       );
//     }

//     return Column(
//       children: [
//         SizedBox(
//           width: Get.width * 0.5,
//           child: Row(
//             children: [
//               Text('Addresses (2)',
//                   style:
//                       getJaldiStyle(size: 32, color: const Color(0xff0F1021))),
//               const Spacer(),
//               InkWell(
//                   onTap: () {
//                     // Get.toNamed(Routes.EMP_REG_FORM);
//                   },
//                   child: Row(children: [
//                     Icon(Icons.add_circle_outline, color: pink),
//                     horizontalSpaceTiny,
//                     Text('Add New', style: getJaldiStyle(color: pink, size: 20))
//                   ]))
//             ],
//           ),
//         ),
//         const Divider(color: Color(0xff0F1021), height: 2),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.start,
//           children: [
//             horizontalSpaceMedium,
//             getCurrentAddressCard(),
//             horizontalSpaceMedium,
//             getPermanentAddressCard()
//           ],
//         )
//       ],
//     );
//   }

//   getNameRow(Employee e) {
//     return SizedBox(
//       width: Get.width * 0.5,
//       child: Row(
//         children: [
//           SizedBox(width: 70, height: 70, child: Image.network(e.impUrl)),
//           Column(
//             mainAxisAlignment: MainAxisAlignment.start,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text(e.name,
//                   style:
//                       getJaldiStyle(size: 32, color: const Color(0xff0F1021))),
//               Text(
//                 e.team,
//                 style: getJaldiStyle(
//                     size: 16, color: const Color(0xff0F1021).withOpacity(0.7)),
//               ),
//             ],
//           ),
//           const Spacer(),
//           Container(
//               padding: const EdgeInsets.all(4),
//               decoration: BoxDecoration(
//                   // color: Color(0xff0F1021).withOpacity(0.8),
//                   border: Border.all(
//                     color: const Color(0xff0F1021).withOpacity(0.8),
//                   ),
//                   borderRadius: BorderRadius.circular(2)),
//               child: Text('Edit Profile',
//                   style: getJaldiStyle(
//                     size: 20,
//                     color: const Color(0xff0F1021).withOpacity(0.8),
//                   )))
//         ],
//       ),
//     );
//   }
// }
