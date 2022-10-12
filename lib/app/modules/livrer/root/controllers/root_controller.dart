import 'package:delivery_food/app/modules/livrer/colislivrure/views/colislivrure_view.dart';
import 'package:delivery_food/app/modules/livrer/distributionlivrure/views/distributionlivrure_view.dart';
import 'package:delivery_food/app/modules/livrer/home/views/home_livrirue_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../../../helper.dart';
import '../../../../routes/app_pages.dart';
import '../../../Admin/home/controllers/home_controller.dart';
import '../../../livrer/assigne/views/assigne_view.dart';
import '../../../livrer/etat/views/etat_view.dart';
import '../../rotourlivrure/views/rotourlivrure_view.dart';

class RootLivrirueController extends GetxController {
  RxInt currentIndex = 0.obs;
  List<BottomNavigationBarItem> itemsNavigationButtom() {
    return [
      BottomNavigationBarItem(
          icon: Image.asset(
            "assets/images/home.png",
            color: currentIndex != 0
                ? Colors.black
                : Helper.getColorFromHex("#E77A13"),
            width: 26.64.w,
            height: 25.37.h,
          ),
          label: ''),
      BottomNavigationBarItem(
          icon: Image.asset(
            "assets/images/ramessage.png",
            color: currentIndex != 1
                ? Colors.black
                : Helper.getColorFromHex("#E77A13"),
            width: 26.64.w,
            height: 25.37.h,
          ),
          label: ''),
      /*BottomNavigationBarItem(
          icon: Image.asset(
            "assets/images/bill icon.png",
            color: currentIndex != 2
                ? Colors.black
                : Helper.getColorFromHex("#E77A13"),
            width: 26.64.w,
            height: 25.37.h,
          ),
          label: ''),*/
      BottomNavigationBarItem(
          icon: Image.asset(
            "assets/images/world-grid.png",
            color: currentIndex != 2
                ? Colors.black
                : Helper.getColorFromHex("#E77A13"),
            width: 26.64.w,
            height: 25.37.h,
          ),
          label: ''),
      BottomNavigationBarItem(
          icon: Image.asset(
            "assets/images/back.png",
            color: currentIndex != 3
                ? Colors.black
                : Helper.getColorFromHex("#E77A13"),
            width: 26.64.w,
            height: 25.37.h,
          ),
          label: ''),
      BottomNavigationBarItem(
          icon: Image.asset(
            "assets/images/package.png",
            color: currentIndex != 4
                ? Colors.black
                : Helper.getColorFromHex("#E77A13"),
            width: 26.64.w,
            height: 25.37.h,
          ),
          label: ''),
    ];
  }

  @override
  void onInit() {
    Get.put(HomeAdminController());
    if (Get.arguments != null && Get.arguments is int) {
      changePageInRoot(Get.arguments as int);
    } else {
      changePageInRoot(0);
    }
    super.onInit();
  }

  List<Widget> pages = [
    HomeLivreureView(),
    DistributionlivrureView(),
    //EtatView(),
    AssigneView(),
    RotourlivrureView(),
    ColislivrureView(),
  ];

  List<FloatingActionButtonLocation> locationFloatingButton = [
    FloatingActionButtonLocation.startDocked,
    FloatingActionButtonLocation.centerDocked,
    FloatingActionButtonLocation.endDocked
  ];
  Widget get currentPage => pages[currentIndex.value];
  FloatingActionButtonLocation get currentLocationFloatingButton =>
      locationFloatingButton[currentIndex.value];

  /**
   
    change page in route

   **/

  void changePageInRoot(int _index) {
    currentIndex.value = _index;
  }

  void changePageOutRoot(int _index) {
    currentIndex.value = _index;
    Get.offNamedUntil(Routes.ROOT, (Route route) {
      if (route.settings.name == Routes.ROOT) {
        return true;
      }
      return false;
    }, arguments: _index);
  }

  void changePage(int _index) {
    if (Get.currentRoute == Routes.ROOT) {
      changePageInRoot(_index);
    } else {
      changePageOutRoot(_index);
    }
  }
}
