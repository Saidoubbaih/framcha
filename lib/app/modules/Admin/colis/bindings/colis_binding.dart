import 'package:get/get.dart';

import '../controllers/colis_controller.dart';

class ColisBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ColisController>(
      () => ColisController(),
    );
  }
}
