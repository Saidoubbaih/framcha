import 'package:get_storage/get_storage.dart';

import '../../../../models/coli_model.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class ColiLivreurService {
 // static String toke = '2|uih2ZeSGY3c6o1GcSHBIkghudh3QMXeQRXvXq5aI';
  /*List<Map<String, dynamic>> fakeColiList = [
    {
      'reference': 'ln888856',
      'seller': 'ln888856',
      'client': 'ln888856',
      'phone': '0605555577',
      'city': 'Abdelkrim',
      'adresse': 'Inzegane',
      'montant': '150',
      'status': 'PDR',
    },
    {
      'reference': 'ln888856',
      'seller': 'ln888856',
      'client': 'ln888856',
      'phone': '0605555577',
      'city': 'Abdelkrim',
      'adresse': 'Inzegane',
      'montant': '150',
      'status': 'En cours',
    },
    {
      'reference': 'ln888856',
      'seller': 'ln888856',
      'client': 'ln888856',
      'phone': '0605555577',
      'city': 'Abdelkrim',
      'adresse': 'Inzegane',
      'montant': '150',
      'status': 'En cours',
    },
    {
      'reference': 'ln888856',
      'seller': 'ln888856',
      'client': 'ln888856',
      'phone': '0605555577',
      'city': 'Abdelkrim',
      'adresse': 'Inzegane',
      'montant': '150',
      'status': 'Annulé',
    },
    {
      'reference': 'ln888856',
      'seller': 'ln888856',
      'client': 'ln888856',
      'phone': '0605555577',
      'city': 'Abdelkrim',
      'adresse': 'Inzegane',
      'montant': '150',
      'status': 'En cours',
    },
    {
      'reference': 'ln888856',
      'seller': 'ln888856',
      'client': 'ln888856',
      'phone': '0605555577',
      'city': 'Abdelkrim',
      'adresse': 'Inzegane',
      'montant': '150',
      'status': 'Refusé',
    },
    {
      'reference': 'ln888856',
      'seller': 'ln888856',
      'client': 'ln888856',
      'phone': '0605555577',
      'city': 'Abdelkrim',
      'adresse': 'Inzegane',
      'montant': '150',
      'status': 'Annulé',
    },
    {
      'reference': 'ln888856',
      'seller': 'ln888856',
      'client': 'ln888856',
      'phone': '0605555577',
      'city': 'Abdelkrim',
      'adresse': 'Inzegane',
      'montant': '150',
      'status': 'En cours',
    },
    {
      'reference': 'ln888856',
      'seller': 'ln888856',
      'client': 'ln888856',
      'phone': '0605555577',
      'city': 'Abdelkrim',
      'adresse': 'Inzegane',
      'montant': '150',
      'status': 'Livré',
    },
  ];*/

  

  /*Future<List<ColiModel>> __getMyColiList() async {
    List<ColiModel> listcoli = fakeColiList
        .map<ColiModel>((json) => ColiModel.fromJson(json))
        .toList();
    return listcoli;
  }*/

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
}
