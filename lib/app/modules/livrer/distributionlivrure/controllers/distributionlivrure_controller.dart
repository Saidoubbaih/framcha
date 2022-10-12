import 'package:delivery_food/app/modules/livrer/distributionlivrure/service/ramassage_service.dart';
import 'package:get/get.dart';

class DistributionlivrureController extends GetxController {

  final count = 0.obs;

 // var listReferenceColi = [].obs; 
//RxSet<String> listReferenceColi  = <String>{}.obs;

  void changeColiStat() async {
    RamassaegLivreurService.changecolistat(listReferenceColi);
  }

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


  void sendRetourlistrefrences() async {
    try {
      //await RamassaegLivreurService.postRetournedRef(listReferenceColi);
    } finally {
      //listReferenceColi.clear();
    }
  }
  
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
