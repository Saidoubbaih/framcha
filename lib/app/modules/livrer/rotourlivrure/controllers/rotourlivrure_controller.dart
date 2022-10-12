import 'package:delivery_food/app/modules/livrer/rotourlivrure/services/retour_livreur_service.dart';
import 'package:get/get.dart';

class RotourlivrureController extends GetxController {
  //var listReferenceColi = [].obs; 
//RxSet<String> listReferenceColi  = <String>{}.obs;

  void changeColiStat() async {
    RetourLivreurService.changecolistat(listReferenceColi);
  }

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

  void sendRetourlistrefrences() async {
    try {
      await RetourLivreurService.postRetournedRef(listReferenceColi);
    } finally {
      listReferenceColi.clear();
    }
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
