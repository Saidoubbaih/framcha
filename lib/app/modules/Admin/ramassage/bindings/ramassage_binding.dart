import 'package:get/get.dart';

import '../controllers/ramassage_controller.dart';

class RamassageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RamassageController>(
      () => RamassageController(),
    );
  }
}
