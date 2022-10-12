import 'dart:convert';

import 'package:delivery_food/app/modules/login/controllers/login_controller.dart';
import 'package:delivery_food/app/utils/app_translation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'app/routes/app_pages.dart';
import 'app/utils/thems.dart';
import 'app/utils/toggle_theme_controller.dart';

import 'package:http/http.dart' as http;

String token = '';

Future<Album> fetchAlbum() async {
  final response = await http
      .get(Uri.parse('https://dashboard.framcha.com/api/mobile/statsPayments'));

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return (jsonDecode(response.body));
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}

class Album {
  final int userId;
  final int id;
  final String title;

  const Album({
    required this.userId,
    required this.id,
    required this.title,
  });

  factory Album.fromJson(Map<String, dynamic> json) {
    return Album(
      userId: json['userId'],
      id: json['id'],
      title: json['title'],
    );
  }
}

void main() async {
  token = 'Basic 71|DvfdDIUOyA6DqZhreEXWq1Zbym6wun7cRYcUUz2H';
  String username = 'delivery@framcha.com';
  String password = '12345678';
  String auth = 'Basic ' + base64Encode(utf8.encode('$username:$password'));
  print(auth);
  print(
      'saiid111111111111111111111111111111111111111111111111111111111111111111111111\n');
  var responselivreur = await http.post(
      Uri.parse('https://dashboard.framcha.com/api/mobile/auth/login'),
      body: {
        "email": 'responsible@framcha.com',
        "password": '12345678',
      });
  print(responselivreur.statusCode);
  print(
      '\nsaiid111111111111111111111111111111111111111111111111111111111111111111111111\n');

  print(jsonDecode(responselivreur.body)['data']['token']);
  token = jsonDecode(responselivreur.body)['data']['token'];
  print(
      '\nsaiid111111111111111111111111111111111111111111111111111111111111111111111111\n');
  var future = await http.get(
    Uri.parse('https://dashboard.framcha.com/api/mobile/status'),
    headers: {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      'Authorization': 'Bearer $token',
    },
  );
  print(future.statusCode);
  print(
      '\nsaiid111111111111111111111111111111111111111111111111111111111111111111111111\n');
  List l = jsonDecode(future.body);
  print(future.body);
  print(token);
  print(future.statusCode);
  for (int i = 0; i < l.length; i++)
    print('id: ${l[i]['id']} title: ${l[i]['title']}');

  print(
      '\nsaiid111111111111111111111111111111111111111111111111111111111111111111111111\n');
  List ll = ['CMD-20221007-681'];
  print(ll);
  final responsee = await http.post(
      Uri.parse(
          'https://dashboard.framcha.com/api/mobile/colis/changeStatusScan'),
      // Send authorization headers to the backend.

      headers: {
        'Content-Type': 'application/json; charset=UTF-8',
        'Accept': 'application/json',
        'Authorization': 'Bearer $token',
      },
      body: jsonEncode({
        'status': 'Returné',
        'is_order': 0,
        'delivery_id': 0,
        'note': '',
        'references': ll
      }));
  print(token);
  print(
      '\nsaiid1111111111111111111111111111111111111111111111111111111111111111111111112\n');

  print(responsee.statusCode);
  print(
      '\nsaiid111111111111111111111111111111111111111111111111111111111111111111111111\n');
  final response = await http.get(
    Uri.parse('https://dashboard.framcha.com/api/mobile/statsPayments'),
    // Send authorization headers to the backend.
    headers: {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      'Authorization': 'Bearer $token',
    },
  );
  print(response.statusCode);
  print(
      '\nsaiid111111111111111111111111111111111111111111111111111111111111111111111111\n');
  print(response.body);
  print(
      '\nsaiid111111111111111111111111111111111111111111111111111111111111111111111111\n');
  print(
      '\nsaiid111111111111111111111111111111111111111111111111111111111111111111111111\n');
  print(
      '\nsaiid111111111111111111111111111111111111111111111111111111111111111111111111\n');
  print(
      '\nsaiid111111111111111111111111111111111111111111111111111111111111111111111111\n');
  print(
      '\nsaiid111111111111111111111111111111111111111111111111111111111111111111111111\n');
  print(
      '\nsaiid111111111111111111111111111111111111111111111111111111111111111111111111\n');
  print(
      '\nsaiid111111111111111111111111111111111111111111111111111111111111111111111111\n');

  ThemeToggleController controller = Get.put(ThemeToggleController());
  LoginController logcontroller = Get.put(LoginController());
  await GetStorage.init();
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]).then((value) => runApp(
        ScreenUtilInit(
          designSize: const Size(360, 690),
          minTextAdapt: true,
          splitScreenMode: true,
          builder: (context, child) => GetMaterialApp(
            locale: Get.deviceLocale,
            translationsKeys: AppTranslation.translationsKeys,
            fallbackLocale: Locale('fr'),
            debugShowCheckedModeBanner: false,
            title: "Application",
            themeMode: controller.getThemeMode(),
            theme: MyThemes.lightThem,
            darkTheme: MyThemes.darkTheme,
            initialRoute: AppPages.INITIAL,
            getPages: AppPages.routes,
          ),
        ),
      ));
}
