import 'package:delivery_food/constante.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../../../../models/coli_model.dart';
import '../services/coli_service.dart';

class ColisController extends GetxController {
  //var _getStorage = GetStorage();
   String toke = TOKENR;

  /* Future<String> get livreurToke async {
    return await GetStorage().read('toke');
  }
*/
  Future<String> getToke() async{
    return GetStorage().read('toke') ?? '';
  }
  // String toke = '4|55G1QMg8bkktvmi0Vw5uHujaqV0bNuTHx2XyxD86';

  List<String> dropdownlist = ['mohamed', 'said', 'ayoub'];
  var selectediteindex = 0;

  late ColiAdminService coliLivreurService;

  int etatindex = 0;

  var isLoading = false.obs;

  final count = 0.obs;

  get etatnom => null;

  get comande => null;

  get numscolilist => null;
  //RxList<ColiModel> listscolis = <ColiModel>[].obs;
  List<dynamic> listscolis = [];

  final RxList<ColiModel> _ColiModelList = <ColiModel>[].obs;
  set ColiModelList(RxList<ColiModel> value) => _ColiModelList.value = value;
  RxList<ColiModel> get ColiModelList => _ColiModelList;

  void fetchMyColilist() async {
    isLoading(true);
    try {
      List<ColiModel> list = await ColiAdminService.getMyColiList(toke);
      if (list != null) {
        ColiModelList.value = list;
        listscolis = list;
        update();
      }
    } finally {
      isLoading(false);
    }
  }

  void fetchColilistbyId() async {
    isLoading(true);
    try {
      List<ColiModel> list = await ColiAdminService.getMyColiListbId(toke);
      if (list != null) {
        ColiModelList.value = list;
        listscolis = list;
        update();
      }
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
  Future<void> onInit() async {
    super.onInit();
  //  toke = await getToke();
    coliLivreurService = ColiAdminService();
    fetchMyColilist();
  }

  @override
  void onReady() {
    super.onReady();
    listscolis = ColiModelList;
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
