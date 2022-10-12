import 'package:get/get.dart';

import '../controllers/responsable_controller.dart';

class ResponsableBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ResponsableController>(
      () => ResponsableController(),
    );
  }
}
