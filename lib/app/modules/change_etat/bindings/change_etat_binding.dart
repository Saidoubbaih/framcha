import 'package:get/get.dart';

import '../controllers/change_etat_controller.dart';

class ChangeEtatBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ChangeEtatController>(
      () => ChangeEtatController(),
    );
  }
}
