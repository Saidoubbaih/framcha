import 'dart:convert';

import 'package:delivery_food/app/models/testmodels/testcontroller.dart';
import 'package:delivery_food/app/modules/Admin/colis/controllers/colis_controller.dart';
import 'package:delivery_food/app/modules/Admin/distribution/controllers/distribution_controller.dart';
import 'package:delivery_food/app/modules/Admin/home/controllers/home_controller.dart';
import 'package:delivery_food/app/modules/Admin/ramassage/controllers/ramassage_controller.dart';
import 'package:delivery_food/app/modules/Admin/retour/controllers/retour_controller.dart';
import 'package:delivery_food/app/modules/Admin/root/controllers/root_controller.dart';
import 'package:delivery_food/app/modules/livrer/assigne/controllers/assigne_controller.dart';
import 'package:delivery_food/app/modules/livrer/colislivrure/controllers/colislivrure_controller.dart';
import 'package:delivery_food/app/modules/livrer/distributionlivrure/controllers/distributionlivrure_controller.dart';
import 'package:delivery_food/app/modules/livrer/etat/controllers/etat_controller.dart';
import 'package:delivery_food/app/modules/livrer/home/controllers/home_controller.dart';
import 'package:delivery_food/app/modules/livrer/root/controllers/root_controller.dart';
import 'package:delivery_food/app/modules/livrer/root/views/root_view.dart';
import 'package:delivery_food/app/modules/livrer/rotourlivrure/controllers/rotourlivrure_controller.dart';
import 'package:delivery_food/app/utils/toggle_language.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:http/http.dart' as http;

import '../../Admin/root/views/root_view.dart';

class LoginController extends GetxController {
  final tokKey = 'toke';

  String getToke() {
    return GetStorage().read(tokKey) ?? '';
  }

  void saveToke(String tok) {
    GetStorage().write(tokKey, tok);
  }

  @override
  void onInit() async {
    super.onInit();
    await getToken();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}

  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  getToken() async {
    /* var responserespp = await http
        .post(Uri.parse('https://dashboard.framcha.com/api/auth/login'), body: {
      "email": 'responsible@framcha.com',
      "password": '12345678',
    });

    
    var tokenresp = json.decode(responserespp.body);
    String token_1reso = tokenresp['data']['token'];
    print("the toke of repo  isssssssssssss : $token_1reso");
*/
    /* var responselivreur = await http
        .post(Uri.parse('https://dashboard.framcha.com/api/auth/login'), body: {
      "email": 'responsible@framcha.com',
      "password": '12345678',
    });

    var tokenlivr = json.decode(responselivreur.body);
    String token_1livr = tokenlivr['data']['token'];
    print("the toke livreur  isssssssssssss : $token_1livr");*/
  }

  Login() async {
    print(email.text);
    print(password.text);
    try {
      var role;
      var response = await http.post(
          Uri.parse('https://dashboard.framcha.com/api/mobile/auth/login'),
          body: {
            "email": email.text,
            "password": password.text,
          });
      if (response.statusCode == 200) {
        try {
          print(response.body);
          var token = json.decode(response.body);
          print(token);

          String token_1 = token['data']['token'];
          print("the toke isssssssssssss : $token_1");
          role = await getRole(token_1);
          saveToke(token_1);

          var result = role.compareTo('responsable');
          if (result == 0) {
            Get.put(RootAdminController());
            Get.put(HomeAdminController());

            Get.put(RamassageController());
            Get.put(ColisController());
            Get.put(DistributionController());
            Get.put(RetourController());
            Get.put(ToggleLanguageController());
            Get.put(HomeLivreureController());
            Get.to(RootAdminView());
          }
        } catch (e) {
          print(e.toString());
        }
      } else {
        print('apiii colaa errror');
        /*   Get.put(HomeLivreureController());
        Get.put(ColislivrureController());
        Get.put(RotourlivrureController());
        Get.put(AssigneController());
        Get.put(EtatController());
        Get.put(ProductController());
        Get.put(DistributionlivrureController());
        Get.put(ToggleLanguageController());
        Get.put(RootLivrirueController());
        Get.put(RootAdminController());
        Get.put(HomeAdminController());
        Get.to(RootLivrirueView());*/
      }
/*var result = role.compareTo('responsable');
      if (result == 0) {
        Get.put(RootAdminController());
                      Get.put(HomeAdminController());
                
                      Get.put(RamassageController());
                      Get.put(ColisController());
                      Get.put(DistributionController());
                      Get.put(RetourController());
                      Get.put(ToggleLanguageController());
                      Get.put(HomeLivreureController());
        Get.to(RootAdminView());
      } else {
        Get.put(HomeLivreureController());
        Get.put(ColislivrureController());
        Get.put(RotourlivrureController());
        Get.put(AssigneController());
        Get.put(EtatController());
        Get.put(ProductController());
        Get.put(DistributionlivrureController());
        Get.put(ToggleLanguageController());
        Get.put(RootLivrirueController());
        Get.put(RootAdminController());
        Get.put(HomeAdminController());
        Get.to(RootLivrirueView());
      }*/
    } catch (e) {
      print(e.toString());
    }
  }

  Future<String> getRole(String toke) async {
    final response = await http.get(
      Uri.parse('https://dashboard.framcha.com/api/mobile/user'),
      // Send authorization headers to the backend.
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        'Authorization': 'Bearer $toke',
      },
    );

    print(response.body);
    var result = jsonDecode(response.body);
    var role = result['data']['roles'][0];
    print(role);
    return role;
    if (response.statusCode == 200) {
      return result;
    } else {
      throw Exception('Failed to load themes');
    }
  }
}
