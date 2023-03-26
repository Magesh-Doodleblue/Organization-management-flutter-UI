import 'package:flutter/material.dart';

max(v1, v2) {
  return v1 >= v2 ? v1 : v2;
}

getTableCell(color, width, widget) {
  return Container(
    color: color,
    padding: const EdgeInsets.all(8.0),
    height: 50,
    width: width,
    child: Center(child: widget),
  );
}

updateNotifier(notify) {
  notify.value = !notify.value;
}
