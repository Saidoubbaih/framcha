import 'package:get/get.dart';

import '../controllers/facturation_controller.dart';

class FacturationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FacturationController>(
      () => FacturationController(),
    );
  }
}
