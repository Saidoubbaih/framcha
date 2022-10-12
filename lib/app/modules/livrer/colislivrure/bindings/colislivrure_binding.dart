import 'package:get/get.dart';

import '../controllers/colislivrure_controller.dart';

class ColislivrureBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ColislivrureController>(
      () => ColislivrureController(),
    );
  }
}
