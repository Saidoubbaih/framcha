import 'package:get/get.dart';

import '../controllers/rotourlivrure_controller.dart';

class RotourlivrureBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RotourlivrureController>(
      () => RotourlivrureController(),
    );
  }
}
