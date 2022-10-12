import 'package:get/get.dart';

import '../controllers/root_controller.dart';

class RootAdminBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RootAdminController>(
      () => RootAdminController(),
    );
  }
}
