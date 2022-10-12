import 'package:get/get.dart';

import '../controllers/retour_controller.dart';

class RetourBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RetourController>(
      () => RetourController(),
    );
  }
}
