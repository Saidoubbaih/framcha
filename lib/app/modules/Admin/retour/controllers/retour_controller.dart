import 'package:get/get.dart';

class RetourController extends GetxController {

  List<String> listReferenceColi = [];


  void addReferenceColi(String ref) {
    if (listReferenceColi.contains(ref))
      return;
    else {
      listReferenceColi.add(ref);
      update();
    }
  }

  void annulerScan() {
    listReferenceColi.clear();
    update();
  }

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
