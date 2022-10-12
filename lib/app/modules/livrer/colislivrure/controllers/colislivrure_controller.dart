import 'package:delivery_food/app/modules/livrer/colislivrure/services/colis_service.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../../../../models/coli_model.dart';

class ColislivrureController extends GetxController {
  var _getStorage = GetStorage();
   String toke = '23|SpFr1Bfq8F0iGeqjSVLs4zyPgUt8gGunn67AbFml';

  /*Future<String> get livreurToke async {
    return await GetStorage().read('toke');
  }*/

  late ColiLivreurService coliLivreurService;

  int etatindex = 0;

  var isLoading = false.obs;

  List<ColiModel> listscolis = [];

  final RxList<ColiModel> _ColiModelList = <ColiModel>[].obs;
  set ColiModelList(List<ColiModel> value) => _ColiModelList.value = value;
  List<ColiModel> get ColiModelList => _ColiModelList;

  void fetchMyColilist() async {
    isLoading(true);
    try {
      ColiModelList = await ColiLivreurService.getMyColiList(toke);
    } finally {
      isLoading(false);
    }
  }

  void changeEtatIndex(int index) {
    etatindex = index;
    switch (index) {
      case 0:
        listscolis = ColiModelList;
        update();
        break;
      case 1:
        listscolis = ColiModelList.where((o) => o.status == 'Livré').toList();
        update();
        break;
      case 2:
        listscolis =
            ColiModelList.where((o) => o.status == 'En cours').toList();
        ;
        update();
        break;
      case 3:
        listscolis = ColiModelList.where((o) => o.status == 'PDR').toList();
        ;
        update();
        break;
      case 4:
        listscolis = ColiModelList.where((o) => o.status == 'Annulé').toList();
        ;
        update();
        break;
      case 5:
        listscolis = ColiModelList.where((o) => o.status == 'Refusé').toList();
        ;
        update();
        break;
      default:
        listscolis = ColiModelList;
    }

    update();
  }

  @override
  void onInit() async {
    super.onInit();
    //toke = _getStorage.read('toke') ?? '';
    //coliLivreurService = ColiLivreurService();
  
  }

  @override
  void onReady() {
    super.onReady();
      fetchMyColilist();
    listscolis = ColiModelList;
  }

  @override
  void onClose() {}
}
