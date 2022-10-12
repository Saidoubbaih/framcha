import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class ToggleLanguageController extends GetxController {
  /*var selectedLanguage = Get.locale!.languageCode.obs;
  

  set changeLanguage(String lang) {
    Locale locale = new Locale(lang);
    Get.updateLocale(locale);
    selectedLanguage.value = lang;
  }*/
  var selectedLanguage = Get.locale!.languageCode.obs;

  set changeLanguage(String lang) {
    Locale locale = new Locale(lang);
    Get.updateLocale(locale);
    selectedLanguage.value = lang;
    saveLanguageToDisk(lang);
  }

  /// Read
  Future<String> get languageSelected async {
    return await GetStorage().read('lang');
  }

  void saveLanguageToDisk(String langusage) async {
    await GetStorage().write('lang', langusage);
  }

  @override
  void onInit() async {
    // TODO: implement onInit
    super.onInit();
    /*  String lang = await languageSelected;
    selectedLanguage.value = 'fr' == 'fr' ? 'fr' : 'ar';
    Get.updateLocale(Locale(lang));*/
  }
}
