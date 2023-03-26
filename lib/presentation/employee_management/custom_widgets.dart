import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'const.dart';

enum Features { Dashboard, People, Attendance, Stocks, Finance, Billing }

double getSideBarSize() {
  return (currentFeature == Features.Dashboard ? 200 : 100);
}

Features currentFeature = Features.Dashboard;

// Container getSideBar({fromHome = false}) {
//   Center getSideBarEntry(IconData icon, Features feature) {
//     return Center(
//       child: Padding(
//         padding: const EdgeInsets.only(left: 20.0),
//         child: InkWell(
//           onTap: () {
//             currentFeature = feature;
//             Get.toNamed(featureRoute[feature]!);
//           },
//           child: Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
//               Icon(icon,
//                   color: currentFeature == feature ? pink : colorTitleText),
//               horizontalSpaceSmall,
//               if (currentFeature == Features.Dashboard)
//                 Text(feature.name,
//                     style: getJaldiStyle(
//                         size: 20,
//                         color:
//                             currentFeature == feature ? pink : colorTitleText))
//             ]),
//           ),
//         ),
//       ),
//     );
//   }

//   return Container(
//     width: getSideBarSize(),
//     padding: const EdgeInsets.all(8),
//     child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
//       verticalSpaceMedium,
//       getLogo(),
//       verticalSpaceMedium,
//       getSideBarEntry(MdiIcons.viewDashboardOutline, Features.Dashboard),
//       getSideBarEntry(MdiIcons.accountTieOutline, Features.People),
//       getSideBarEntry(MdiIcons.calendarCheckOutline, Features.Attendance),
//       getSideBarEntry(MdiIcons.reorderHorizontal, Features.Stocks),
//       getSideBarEntry(MdiIcons.walletOutline, Features.Finance),
//       getSideBarEntry(MdiIcons.textBoxOutline, Features.Billing),
//     ]),
//   );
// }

getLogo() {
  return currentFeature == Features.Dashboard
      ? GradientText('Company',
          style: getInterStyle(size: 36),
          gradient: const LinearGradient(
              colors: [Color(0xff0F1021), Color(0xffD01257)]))
      : Image.asset('images/logo.png');
}

class GradientText extends StatelessWidget {
  const GradientText(
    this.text, {
    super.key,
    required this.gradient,
    this.style,
  });

  final String text;
  final TextStyle? style;
  final Gradient gradient;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      blendMode: BlendMode.srcIn,
      shaderCallback: (bounds) => gradient.createShader(
        Rect.fromLTWH(0, 0, bounds.width, bounds.height),
      ),
      child: Text(text, style: style),
    );
  }
}

TextEditingController tecSearchBox = TextEditingController();
Row getTopRow() {
  Container searchBox = Container(
    padding: const EdgeInsets.only(top: 4, left: 4, bottom: 4),
    width: Get.width * 0.25,
    height: 30,
    decoration: BoxDecoration(
        color: Colors.white, borderRadius: BorderRadius.circular(10)),
    child: TextField(
      controller: tecSearchBox,
      decoration: const InputDecoration(
        contentPadding: EdgeInsets.only(top: -8),
        hintText: 'Search',
        alignLabelWithHint: true,
        hintStyle: TextStyle(
          fontSize: 12,
        ),
        suffixIcon: Icon(Icons.search),
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
        child: Icon(Icons.person_outline),
      ),
    ),
  );
  Card settings = Card(
    elevation: 4,
    child: InkWell(
      onTap: () {},
      child: const Padding(
        padding: EdgeInsets.all(2.0),
        child: Icon(Icons.settings_outlined),
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

getText(
  text,
  size,
  required,
) {
  return Row(
    children: [
      horizontalSpaceRegular,
      Text(text, style: getPoppinsStyle(size: size)),
      if (required)
        const Text('*',
            style: TextStyle(color: Color(0xffFF0000), fontSize: 25))
    ],
  );
}

getRadioGroup(name, options, selected, required) {
  return Row(
    children: [
      getText(name, 25, required),
    ],
  );
}

getEditText(String displayName, controller, value,
    {prefixIcon = Icons.abc, readOnly = false, width = 0.25, noHint = false}) {
  if (value.toString() != "") controller.text = value.toString();
  TextInputType inputType = TextInputType.text;
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(30),
      color: const Color(0xFFD9D9D9),
    ),
    height: 50,
    width: Get.width * width,
    child: TextFormField(
      textAlign: TextAlign.center,
      controller: controller,
      readOnly: readOnly,
      maxLines: null,
      keyboardType: inputType,
      decoration: prefixIcon != Icons.abc
          ? InputDecoration(
              border: InputBorder.none,
              hintText: noHint ? "" : displayName,
              hintStyle: getPoppinsStyle(color: Colors.black.withOpacity(0.2)),
              contentPadding: const EdgeInsets.all(0),
              prefixIcon: Icon(prefixIcon),
            )
          : InputDecoration(
              border: InputBorder.none,
              hintText: noHint ? "" : displayName,
              hintStyle: getPoppinsStyle(color: Colors.black.withOpacity(0.2)),
              contentPadding: const EdgeInsets.all(0),
            ),
      onTap: () {},
      onEditingComplete: () {
        FocusScope.of(Get.context!).unfocus();
      },
      onChanged: (code) async {},
    ),
  );
}

class MyRadioOption<T> extends StatelessWidget {
  final T? groupValue;
  final String label;
  final ValueChanged<T?>? onChanged;

  const MyRadioOption({
    super.key,
    required this.groupValue,
    required this.label,
    this.onChanged,
  });

  Widget _buildLabel() {
    final bool isSelected = label == groupValue;
    Color colorSelected = const Color(0xff228B22);
    return Container(
      width: 20,
      height: 20,
      padding: const EdgeInsets.all(3),
      decoration: ShapeDecoration(
        shape: CircleBorder(
          side: BorderSide(
            color: isSelected ? colorSelected : Colors.black,
          ),
        ),
        color: Colors.white,
      ),
      child: Center(
          child: Container(
        decoration: BoxDecoration(
            color: isSelected ? colorSelected : Colors.white,
            borderRadius: BorderRadius.circular(30)),
      )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      child: InkWell(
        splashColor: Colors.cyan.withOpacity(0.5),
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: Row(
            children: [
              _buildLabel(),
              getText(label, 20, false),
            ],
          ),
        ),
      ),
    );
  }
}
