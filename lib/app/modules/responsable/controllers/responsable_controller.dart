import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ResponsableController extends GetxController {

  TextEditingController reference = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController nome = TextEditingController();
  TextEditingController prenom = TextEditingController();

  @override
  void onInit() {
    reference.text="L-22190755";
    email.text="oopokni@gmail.com";
    nome.text="Ouknik";
    prenom.text="Abdellah";
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}

}
