import 'package:flutter/material.dart';

import 'package:get/get.dart';

class ReporteView extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ReporteView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'ReporteView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
