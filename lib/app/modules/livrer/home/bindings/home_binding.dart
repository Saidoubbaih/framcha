import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeLivrureBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeLivreureController>(
      () => HomeLivreureController(),
    );
  }
}
