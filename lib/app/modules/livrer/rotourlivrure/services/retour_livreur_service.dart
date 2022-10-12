import 'package:delivery_food/app/models/coli_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class RetourLivreurService {
  //static String toke = '4|55G1QMg8bkktvmi0Vw5uHujaqV0bNuTHx2XyxD86';

  static String toke = '5G1QMg8bkktvmi0VD86';

  

  static ColiModel colimodel = ColiModel(55,'jj', 'ff', 'ff', 'ffff', 'fff', '55','uu','yy','y');

  static void changecolistat(var list) async {
    if (list.contains(colimodel.reference)) {
      colimodel.status = "returned";
    }
    ;
  }

  static Future<List<dynamic>> postRetournedRef(var list) async {
    final response = await http.post(
      Uri.parse('https://dashboard.framcha.com/api/mobile/colis/changeStatusScan'),
      // Send authorization headers to the backend.
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        'Authorization': 'Bearer $toke',
      },
       body: jsonEncode(<String, dynamic>{
      'is_order': 0,
      'status' : 'Retour',
      'references' :  list,
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
      
      
    } )
    );
    print(response.body);
    List<dynamic> result = jsonDecode(response.body);
    if (response.statusCode == 200) {
      return result;
    } else {
      throw Exception('Failed to load themes');
    }
  }
}
