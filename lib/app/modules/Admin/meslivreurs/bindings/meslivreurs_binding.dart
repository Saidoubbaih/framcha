import 'package:get/get.dart';

import '../controllers/mes_livreurs_controller.dart';



class FacturationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MesLivreursController>(
      () => MesLivreursController(),
    );
  }
}
