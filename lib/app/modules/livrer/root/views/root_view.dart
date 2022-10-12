import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/root_controller.dart';

class RootLivrirueView extends GetView<RootLivrirueController> {
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Scaffold(
        // backgroundColor: Colors.transparent,
        body: controller.currentPage,
        bottomNavigationBar: Container(
          height: 56,
          child: BottomAppBar(
            //
            shape: const CircularNotchedRectangle(),
            notchMargin: 5, //
            child: BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                //  selectedItemColor: Colors.white,
                selectedFontSize: 0,
                unselectedFontSize: 0,
                iconSize: 30,
                elevation: 0,

                //  selectedIconTheme: IconThemeData(size: 36, color: Color(0xffffff)),
                // unselectedItemColor: Color(0xffffff),
                currentIndex: 0,
                onTap: (int i) {
                  controller.changePageInRoot(i);
                },
                // this will be set when a new tab is tapped
                items: controller.itemsNavigationButtom()),
          ),
        ),
      );
    });
  }
}
