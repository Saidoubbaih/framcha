import 'package:get/get.dart';

import '../controllers/assigne_controller.dart';

class AssigneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AssigneController>(
      () => AssigneController(),
    );
  }
}
