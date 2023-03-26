class StockModel {
  String name = "";
  int code = 0;
  int qr_code = 0;
  int price = 0;
  int stack = 0;
  String location = "";
  String description = "";

  fromJson(j) {
    name = j['name'];
    code = int.parse(j['code'].toString());
    qr_code = int.parse(j['qr_code'].toString());
    price = j['price'];
    stack = j['stack'];
    location = j['location'];
    description = j['description'];
  }
}

List<StockModel> listStocks = [];
