import 'package:delivery_food/app/data/drawer_page.dart';
import 'package:delivery_food/app/utils/toggle_theme_controller.dart';
import 'package:delivery_food/helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../controllers/mes_livreurs_controller.dart';

class MesLivreursView extends GetView<MesLivreursController> {
  @override
  Widget build(BuildContext context) {
    ThemeToggleController themcontroller = Get.find();
    return GetBuilder<ThemeToggleController>(
      builder: (_dx) => Scaffold(
        drawer: DrawerPAge(),
        appBar: AppBar(
          elevation: 0.0,
          title: Text(
            'mylivreurs'.tr,
            style: TextStyle(
              color: themcontroller.isSavedDarkMode()
                  ? Helper.getColorFromHex("#FFFFFF")
                  : Helper.getColorFromHex("#000000"),
              fontWeight: FontWeight.w300,
              fontSize: 18.01.sp,
            ),
          ),
          leading: Builder(builder: (context) {
            return GestureDetector(
              onTap: () => {
                Scaffold.of(context).openDrawer(),
              },
              child: Image.asset(
                "assets/images/logo.png",
                width: 32.w,
                height: 30.h,
              ),
            );
          }),
          actions: [
            Image.asset(
              "assets/images/notification.png",
              width: 32.w,
              height: 32.h,
            )
          ],
          centerTitle: true,
          // backgroundColor: bacgroundColor,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              /* Container(
                child: Padding(
                  padding: EdgeInsets.only(top: 20.h, left: 24.w, right: 24.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Builder(builder: (context) {
                        return GestureDetector(
                          onTap: () => {
                            Scaffold.of(context).openDrawer(),
                          },
                          child: Image.asset(
                            "assets/images/logo.png",
                            width: 35.w,
                            height: 33.h,
                          ),
                        );
                      }),
                      Image.asset(
                        "assets/images/notification.png",
                        width: 32.w,
                        height: 32.h,
                      )
                    ],
                  ),
                ),
              ),*/
              SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                child: ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: 6,
                    itemBuilder: (context, i) {
                      return Padding(
                        padding: EdgeInsets.only(left: 31.w, right: 31.w),
                        child: Column(
                          children: [
                            Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: new BorderRadius.circular(5.r)),
                              child: Padding(
                                padding: EdgeInsets.only(bottom: 10.h),
                                child: Row(
                                  children: [
                                    SizedBox(
                                      height: 50,
                                      width: 50,
                                      child: Image.asset(
                                          "assets/images/deliveryman.png"),
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(
                                              top: 12.h,
                                              left: 10.w,
                                              right: 10.w),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                "Livreur : ",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 14.sp,
                                                ),
                                              ),
                                              Text(
                                                "Samir Dhina",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 14.sp,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                              top: 12.h,
                                              left: 10.w,
                                              right: 10.w),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                "Tel : ",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 14.sp,
                                                ),
                                              ),
                                              Text(
                                                "060606060",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 14.sp,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                              top: 12.h,
                                              left: 10.w,
                                              right: 10.w),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                "Commande livres : ",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 14.sp,
                                                ),
                                              ),
                                              Text(
                                                "15",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 14.sp,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                              top: 12.h,
                                              left: 10.w,
                                              right: 10.w),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                "Zone : ",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 14.sp,
                                                ),
                                              ),
                                              Text(
                                                "Salam | Houda | Dakhla |\n Inzgane | Hay mohamadi",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 14.sp,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              elevation: 2,
                            ),
                            SizedBox(
                              height: 31.h,
                            )
                          ],
                        ),
                      );
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
