import 'package:get/get.dart';

import '../controllers/time_card_controller.dart';

class TimeCardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TimeCardController>(
      () => TimeCardController(),
    );
  }
}
