import 'package:get/get.dart';

import '../controllers/root_controller.dart';

class RootLivrirueBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RootLivrirueController>(
      () => RootLivrirueController(),
    );
  }
}
