import 'package:get/get.dart';

import '../controllers/distributionlivrure_controller.dart';

class DistributionlivrureBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DistributionlivrureController>(
      () => DistributionlivrureController(),
    );
  }
}
