import 'test_data.dart';

enum Gender { MALE, FEMALE, OTHERS }

enum Relationship { SPOUSE, FATHER, MOTHER, CHILD }

class Address {
  String addr1 = "";
  String addr2 = "";
  String city = "";
  String district = "";
  String state = "";
  String country = "";
  String pincode = "";
  fromJson(j) {
    addr1 = j['addr1'] ?? "";
    addr2 = j['addr2'] ?? "";
    city = j['city'] ?? "";
    district = j['district'] ?? "";
    state = j['state'] ?? "";
    country = j['country'] ?? "";
    pincode = j['pincode'] ?? "";
  }

  getFull() {
    return [addr1, addr2, city, district, state, country, pincode].join(', ');
  }
}

class BankAccount {
  String bankName = "";
  String logo = "";
  String name = "";
  String accNo = "";
  String ifsc = "";
  String branch = "";
  bool isPrimary = false;
  fromJson(j) {
    bankName = j['bankName'] ?? "";
    logo = j['logo'] ?? "";
    name = j['name'] ?? "";
    accNo = j['accNo'] ?? "";
    ifsc = j['ifsc'] ?? "";
    branch = j['branch'] ?? "";
    isPrimary = j['isPrimary'] ?? false;
  }
}

class Dependant {
  Relationship relation = Relationship.SPOUSE;
  String name = "";
  Gender gender = Gender.MALE;
  DateTime dob = DateTime.now();
  fromJson(j) {
    relation = Relationship.values
        .firstWhere((e) => e.toString() == 'Relationship.' + j['relation']);
    gender = Gender.values
        .firstWhere((e) => e.toString() == 'Gender.' + j['gender']);
    name = j['name'] ?? "";
    dob = DateTime.parse(j['dob'] ?? "");
  }
}

class Employee {
  String name = "";
  String team = "";
  String email = "";
  String phone = "";
  String location = "";
  double locationLat = 0.0;
  double locationLong = 0.0;
  DateTime? dateOfjoining = DateTime.now();
  String role = "";
  String empId = "";
  DateTime dob = DateTime.now();
  Gender gender = Gender.MALE;
  List<Dependant> dependants = [];
  Address permanentAddress = Address();
  Address currentAddress = Address();
  List<BankAccount> bankAccounts = [];

  String impUrl =
      "https://images.unsplash.com/photo-1675453442429-1ea5b9652743?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=764&q=80";

  fromJson(j) {
    name = j['name'] ?? "";
    team = j['team'] ?? "";
    email = j['email'] ?? "";
    phone = j['phone'] ?? "";
    location = j['location'] ?? "";
    locationLat = j['locationLat'] ?? 0.0;
    locationLong = j['locationLong'] ?? 0.0;
    dateOfjoining =
        DateTime.parse(j['dateOfJoining'] ?? DateTime.now().toIso8601String());
    role = j['role'] ?? "";
    empId = j['empId'] ?? "";
    dob = DateTime.parse(j['dob'] ?? DateTime.now().toIso8601String());
    gender = Gender.values
        .firstWhere((e) => e.toString() == 'Gender.' + (j['gender'] ?? "MALE"));
    for (var d in j['dependants'] ?? []) {
      Dependant dep = Dependant();
      dep.fromJson(d);
      dependants.add(dep);
    }

    Address address = Address();
    address.fromJson(j['permanentAddress'] ?? {});
    permanentAddress = address;
    address.fromJson(j['currentAddress'] ?? {});
    currentAddress = address;

    for (var a in j['bankAccounts'] ?? []) {
      BankAccount acc = BankAccount();
      acc.fromJson(a);
      bankAccounts.add(acc);
    }
  }

  toJson() {
    var j = {};
    j['name'] = name;
    j['team'] = team;
    j['email'] = email;
    j['phone'] = phone;
    j['location'] = location;
  }
}

List<Employee> listEmployees = [];

updateEmployees() {
  listEmployees = [];
  for (var e in sampleEmployees) {
    var emp = Employee();
    emp.fromJson(e);
    listEmployees.add(emp);
  }
}
