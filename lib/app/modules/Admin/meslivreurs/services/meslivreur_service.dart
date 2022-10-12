import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:delivery_food/app/models/user_info.dart';

class MesLivreurService{
  List<Map<String, dynamic>> livreurList = [
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
      'firstname': 'ln888856',
      'lastname': 'ln888856',
      'email': '0605555577',
      'phone1': 'Abdelkrim',
      'phone2': 'Inzegane',
      'avatar': '150',
      'contrat': 'Livré',
      'created_at': 'Inzegane',
      'zones': '150',
      
      
    },
    
  ];


  Future<List<UserModel>> getMyColiList() async {
    List<UserModel> listcoli = 
    livreurList.map<UserModel>((json) => UserModel.fromJson(json)).toList();
    return listcoli;
  }
  Future<List<UserModel>> __getMyColiList() async {
  final response =
      await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));

  if (response.statusCode == 200) {
    final parsed = json.decode(response.body).cast<Map<String, dynamic>>();

    return parsed.map<UserModel>((json) => UserModel.fromJson(json)).toList();
  } else {
    throw Exception('Failed to load album');
  }
}
}