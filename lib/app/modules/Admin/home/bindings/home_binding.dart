import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeAdminBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeAdminController>(
      () => HomeAdminController(),
    );
  }
}
