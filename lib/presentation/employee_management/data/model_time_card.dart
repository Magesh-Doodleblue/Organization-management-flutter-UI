import 'package:flutter/services.dart';

class TimeCard {
  String date = "";
  String name = "";
  String checkin = "";
  String checkout = "";
  String mealBreak = "";
  String hoursRegular = "";
  String overTime = "";
  bool approval = false;
  String imgUrl =
      "https://images.unsplash.com/photo-1675453442429-1ea5b9652743?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=764&q=80";

  fromJson(j) {
    name = j['name'];
    date = j['date']; //
    checkin = j['checkin']; //DateTime.now().toIso8601String().split('T')[1].split('.')[0];
    checkout = j['checkout']; //DateTime.now().toIso8601String().split('T')[1].split('.')[0];
    mealBreak = j['mealBreak']; //"1 hr 30 min"
    hoursRegular = j['hoursRegular'];
    overTime = j['overTime'];
    approval = j['approval'];
    imgUrl = j['imgUrl'] ?? imgUrl;
  }

  toJson() {
    var j = {};
    j['name'] = name;
    j['date'] = date;
    j['checkin'] = checkin;
    j['checkout'] = checkout;
    j['mealBreak'] = mealBreak;
    j['hoursRegular'] = hoursRegular;
    j['overTime'] = overTime;
    j['approval'] = approval;
    imgUrl = j['imgUrl'];
  }
}

List<TimeCard> listTimeCard = [];
