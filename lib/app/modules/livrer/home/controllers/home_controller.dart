import 'package:delivery_food/app/models/statuspaiement.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import '../Comande.dart';
import '../services/home_service.dart';

class HomeLivreureController extends GetxController {
  //String toke = '4|55G1QMg8bkktvmi0Vw5uHujaqV0bNuTHx2XyxD86';
  String toke = '23|SpFr1Bfq8F0iGeqjSVLs4zyPgUt8gGunn67AbFml';

  void saveTokeToDisk(String langusage) async {
    await GetStorage().write('toke', toke);
  }

  late HomeLivreurService homelivreurservice;
  List<String> etatnom = [
    'assigned', //
    'delivery', //
    'progress', //
    'postponed', //
    'no_reply', //
    'unreachable',
    'canceled',
    'refused',
    'out_of_area', //
    'returned',
    'pickup',
    'reception'
  ];

  /*List<String> etatnomkey = [
    "t_assigned",
    "t_out_of_area",
    "t_in_progress",
    "t_delivery",
    "t_no_reply",
    "t_postponed_to"
  ];*/

  List<String> listicon = [
    "assets/images/deliveryman.png",
    "assets/images/package orange.png",
    "assets/images/delivery-bike blue.png",
    "assets/images/police orange.png",
    "assets/images/answer.png",
    "assets/images/inaccessible.png",
    "assets/images/refesed.png",
    "assets/images/canceled.png",
    "assets/images/no-wifi.png",
    "assets/images/returned.png",
    "assets/images/recupered.png",
    "assets/images/receptionn.png"
  ];

  var isColisLoading = true.obs;
  var isStatPaieLoading = true.obs;

  /* final RxMap<String, dynamic> _commandStatus = RxMap<String, dynamic>();
  set commandStatus(Map<String, dynamic> value) => _commandStatus.value = value;
  Map<String, dynamic> get commandStatus => _commandStatus;

  final _StatusPaie = StatuPaiement().obs;
  set StatusPaie(StatuPaiement value) => _StatusPaie.value = value;
  StatuPaiement get StatusPaie => _StatusPaie.value;*/

  List<dynamic> _commandStatus =
      [1, 2, 3, 5, 6, 6, 7, 8, 9, 6, 5, 88].obs; //RxList<dynamic>();
  set commandStatus(List<dynamic> value) => _commandStatus = value;
  List<dynamic> get commandStatus => _commandStatus;

  final _StatusPaie = StatuPaiement().obs;
  set StatusPaie(StatuPaiement value) => _StatusPaie.value = value;
  StatuPaiement get StatusPaie => _StatusPaie.value;
  /* Future<void> modifyChapter(
      ColiModel chapter, String key, dynamic value) async {
    Map<String, dynamic> formData = {key: value};
    if (key == "read") formData['lastPageRead'] = '1';
    //await repository.patchChapter(chapter, formData);
    //await loadChapterList(loadingWidget: false);
  }*/

  /* void fetchMyColilist() async {
    isColisLoading(true);
    try {
      Map<String, dynamic> list = await homelivreurservice.getCommandInfo();
      commandStatus = list;
    } finally {
      isColisLoading(false);
    }
  }*/
  void fetchMyCommandStatus() async {
    isColisLoading(true);
    try {
      List<dynamic> list = await HomeLivreurService.getCommandInfo(toke);
      commandStatus = list;
    } finally {
      isColisLoading(false);
    }
  }

  void fetchStatusPaieInfo() async {
    isStatPaieLoading(true);
    try {
      List<dynamic> list = await HomeLivreurService.getStatPaieInfo(toke);
      StatuPaiement statpaie = StatuPaiement.fromJson(list);
      //  StatuPaiement(list[0], list[1], list[2], list[3]);
      StatusPaie = statpaie;
    } finally {
      isStatPaieLoading(false);
    }
  }

  /*void fetchStatusPaieInfo() async {
    isStatPaieLoading(true);
    try {
      StatuPaiement statpaie = await homelivreurservice.getStatPaieInfo();
      StatusPaie = statpaie;
    } finally {
      isStatPaieLoading(false);
    }
  }*/

  @override
  void onInit() async {
    super.onInit();
    // homelivreurservice = HomeLivreurService();
    //  fetchMyCommandStatus();
   // saveTokeToDisk(toke);
    fetchStatusPaieInfo();
    // calculColiswithcase();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}

  List<Comande> comande = [
    Comande(title: "Assigné", img: "assets/images/deliveryman.png", number: 10),
    Comande(title: "HorsZone", img: "assets/images/no-wifi.png", number: 22),
    Comande(
        title: "En cours",
        img: "assets/images/delivery-bike blue.png",
        number: 10),
    Comande(
        title: "Livré", img: "assets/images/package orange.png", number: 10),
    Comande(title: "PDR", img: "assets/images/answer.png", number: 10),
    Comande(
        title: "Reporter", img: "assets/images/police orange.png", number: 149),
  ];
}
