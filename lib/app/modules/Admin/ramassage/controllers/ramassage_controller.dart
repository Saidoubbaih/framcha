import 'package:get/get.dart';

class RamassageController extends GetxController {

  String listReferenceColi = '';


  void addReferenceColi(String ref) {
    if (listReferenceColi == ref)
      return;
    else {
      listReferenceColi = ref;
      update();
    }
  }

  void annulerScan() {
    listReferenceColi = '';
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
