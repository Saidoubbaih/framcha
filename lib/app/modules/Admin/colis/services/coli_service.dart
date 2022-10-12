import '../../../../models/coli_model.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class ColiAdminService {
  static Future<List<ColiModel>> getMyColiList(toke) async {
    final response = await http.get(
      Uri.parse('https://dashboard.framcha.com/api/mobile/colis'),
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        'Authorization': 'Bearer $toke',
      },
    );

    if (response.statusCode == 200) {
      print(response.body);
      final parsed =
          json.decode(response.body)['data'].cast<Map<String, dynamic>>();

      return parsed.map<ColiModel>((json) => ColiModel.fromJson(json)).toList();
    } else {
      print("erroorrrrrrrrrrrrrr api");
      throw Exception('Failed to load album');
    }
  }

 // final String url ="https://dashboard.framcha.com/api/mobile/colis/${delivery}/";
  static Future<List<ColiModel>> getMyColiListbId(toke) async {
    final response = await http.get(
        Uri.parse('https://dashboard.framcha.com/api/mobile/colis/?delivery=15'),
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'Authorization': 'Bearer $toke',
          
        },
       );

    if (response.statusCode == 200) {
      print(response.body);
      final parsed =
          json.decode(response.body)['data'].cast<Map<String, dynamic>>();

      return parsed.map<ColiModel>((json) => ColiModel.fromJson(json)).toList();
    } else {
      print("erroorrrrrrrrrrrrrr api");
      throw Exception('Failed to load album');
    }
  }
  /*Future<List<ColiModel>> getMyColiList() async {
    List<ColiModel> listcoli = <ColiModel>[];
    for (Map<String, dynamic> coli in fakeColiList) {
      listcoli.add(new ColiModel(
        coli['reference'],
        coli['tel'],
        coli['vendeur'],
        coli['adresse'],
        coli['etat'],
        coli['prix'],
      ));
    }
    return listcoli.toList();
  }*/
}
