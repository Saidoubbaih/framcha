import 'package:delivery_food/main.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class RetourService {
  //static String toke = '4|55G1QMg8bkktvmi0Vw5uHujaqV0bNuTHx2XyxD86';

  static String toke = '5G1QMg8bkktvmi0VD86';

  static Future<http.Response> postRetournedRef(var list) async {
    final response = await http.post(
        Uri.parse(
            'https://dashboard.framcha.com/api/mobile/colis/changeStatusScan'),
        // Send authorization headers to the backend.
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'Authorization': 'Bearer $token',
        },
        body: jsonEncode({
          'is_order': 0,
          'status': 'Retour',
          'references': list,
          'delivery_id': 'id'
/*
      // ramasssage
      'is_order': 0,  orders = 1  stocke == 0
      'status' : 'Ramassè',
      'references': 1 reference,
      'delivery_id': ,

      // reception
      'is_order': 0,  orders = 1  stocke == 0
      'status' : 'Reception',
      'references': 1 reference,
      'delivery_id': ,

      // distrubition
*/
        }));
    print(response.statusCode);
    //   List<dynamic> result = jsonDecode(response.body);
    if (response.statusCode == 200) {
      return response;
    } else {
      throw Exception('Failed to load themes');
    }
  }
}
