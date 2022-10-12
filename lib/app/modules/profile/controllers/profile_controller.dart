import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ProfileController extends GetxController {
  
  TextEditingController motpasse = TextEditingController();
  TextEditingController reference = TextEditingController();
  TextEditingController tele2 = TextEditingController();
  TextEditingController tele1 = TextEditingController();
  TextEditingController nome = TextEditingController();
  TextEditingController prenom = TextEditingController();

  @override
  void onInit() {
    motpasse.text="**********";
    reference.text="L-22190755";
    tele2.text="+212650421408";
    tele1.text="+212650421408";
    nome.text="Chebani";
    prenom.text="Abdeltif";
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}

}
