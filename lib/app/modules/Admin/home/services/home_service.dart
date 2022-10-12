import 'dart:convert';

import 'package:delivery_food/constante.dart';
import 'package:http/http.dart' as http;

class HomeAdminService {


  static String toke = TOKENR;
  // GetStorage().read('toke')?? '';

  static Future<List<dynamic>> getStatPaieInfo() async {
    final response = await http.get(
      Uri.parse('https://dashboard.framcha.com/api/mobile/statsPayments'),
      // Send authorization headers to the backend.
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        'Authorization': 'Bearer $toke',
      },
    );
    print(response.body);
    List<dynamic> result = jsonDecode(response.body);
    if (response.statusCode == 200) {
      return result;
    } else {
      throw Exception('Failed to load themes');
    }
  }

  static Future<List<dynamic>> getCommandInfo() async {
    final response = await http.get(
      Uri.parse('https://dashboard.framcha.com/api/mobile/statsPayments'),
      // Send authorization headers to the backend.
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        'Authorization': 'Bearer $toke',
      },
    );
    print(response.body);
    List<dynamic> result = jsonDecode(response.body);
    if (response.statusCode == 200) {
      return result;
    } else {
      throw Exception('Failed to load themes');
    }
  }

  /* static Future<List<ColiModel>?> fetchUpComingMovies() async {
    var response = await client.get(Uri.parse('e.com/todos'));
    if (response.statusCode == 200) {
      var json = response.body;
      for (Map<String, dynamic> coli in json) {
      listcoli.add(ColiModel(
        coli['reference'],
        coli['tel'],
        coli['vendeur'],
        coli['adresse'],
        coli['etat'],
      ));
    }
      var upcoming = ColiModel.toj(json);
      return upcoming;
    } else {
      return null;
    }
  }*/
}
