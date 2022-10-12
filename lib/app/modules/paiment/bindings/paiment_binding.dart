import 'package:get/get.dart';

import '../controllers/paiment_controller.dart';

class PaimentBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PaimentController>(
      () => PaimentController(),
    );
  }
}
