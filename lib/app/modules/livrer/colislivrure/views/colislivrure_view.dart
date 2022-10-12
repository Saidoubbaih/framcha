import 'package:delivery_food/app/utils/toggle_theme_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../../../helper.dart';
import '../../../change_etat/views/change_etat_view.dart';
import '../../../change_etat/views/voir_etat_view.dart';
import '../controllers/colislivrure_controller.dart';

class ColislivrureView extends StatelessWidget {
  final controller = Get.find<ColislivrureController>();
  @override
  Widget build(BuildContext context) {
    ThemeToggleController themcontroller = Get.find();
    return GetBuilder<ThemeToggleController>(
      builder: (_dx) => Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: themcontroller.isSavedDarkMode()
                ? Helper.getColorFromHex("#FFFFFF")
                : Helper.getColorFromHex("#000000"),
          ),
          toolbarHeight: 40.h,
          leadingWidth: 45.w,
          //   backgroundColor: bacgroundColor,
          title: Text(
            'Colis',
            style: TextStyle(
              color: themcontroller.isSavedDarkMode()
                  ? Helper.getColorFromHex("#FFFFFF")
                  : Helper.getColorFromHex("#000000"),
              fontWeight: FontWeight.w300,
              fontSize: 18.01.sp,
            ),
          ),
          elevation: 1,
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 23.w, right: 23.w, top: 29.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 0.w, right: 1.w),
                      child: GestureDetector(
                        onTap: () async {
                          controller.changeEtatIndex(0);
                        },
                        child: Container(
                          height: 28.575998306274414.h,
                          width: 42.6400032043457.w,
                          //onPressed: (){},
                          child: Center(
                            child: Text(
                              "Total",
                              style: TextStyle(fontSize: 12.01
                                  // fontSize: 16.01
                                  ),
                            ),
                          ),
                          color: Helper.getColorFromHex("#00B6FF"),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 1.w, right: 1.w),
                      child: GestureDetector(
                        onTap: () async {
                          controller.changeEtatIndex(1);
                        },
                        child: Container(
                          height: 28.575998306274414.h,
                          width: 42.6400032043457.w,
                          // onPressed: (){},

                          child: Center(
                            child: Text(
                              "Livré",
                              style: TextStyle(fontSize: 16.01),
                            ),
                          ),
                          color: Helper.getColorFromHex("#24FF00"),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 1.w, right: 1.w),
                      child: GestureDetector(
                        onTap: () {
                          controller.changeEtatIndex(2);
                        },
                        child: Container(
                          height: 28.575998306274414.h,
                          width: 55.6400032043457.w,
                          // onPressed: (){},

                          child: Center(
                            child: Text(
                              "En cours",
                              style: TextStyle(fontSize: 12.01
                                  // fontSize: 16.01
                                  ),
                            ),
                          ),
                          color: Helper.getColorFromHex("#4A8800"),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 1.w, right: 1.w),
                      child: GestureDetector(
                        onTap: () {
                          controller.changeEtatIndex(3);
                        },
                        child: Container(
                          height: 28.575998306274414.h,
                          width: 42.6400032043457.w,
                          //onPressed: (){},

                          child: Center(
                            child: Text(
                              "PDR",
                              style: TextStyle(fontSize: 12.01
                                  //  fontSize: 16.01
                                  ),
                            ),
                          ),
                          color: Helper.getColorFromHex("#3AA8D3"),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 1.w, right: 1.w),
                      child: GestureDetector(
                        onTap: () {
                          controller.changeEtatIndex(4);
                        },
                        child: Container(
                          color: Helper.getColorFromHex("#E77A13"),
                          height: 28.575998306274414.h,
                          width: 45.6400032043457.w,
                          //onPressed: (){},

                          child: Center(
                            child: Text(
                              "Annulé",
                              style: TextStyle(
                                  // fontSize: 16.01
                                  fontSize: 12.01),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 1.w, right: 1.w),
                      child: GestureDetector(
                        onTap: () {
                          controller.changeEtatIndex(5);
                        },
                        child: Container(
                          height: 28.575998306274414.h,
                          width: 46.6400032043457.w,
                          //onPressed: (){},
                          child: Center(
                            child: Text(
                              "Refusé",
                              style: TextStyle(fontSize: 12.01),
                            ),
                          ),
                          color: Helper.getColorFromHex("#FF0000"),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              GetBuilder<ColislivrureController>(
                builder: (_dx) => ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: controller.listscolis.length,
                  itemBuilder: (context, i) => Padding(
                    padding:
                        EdgeInsets.only(right: 25.w, left: 25.w, top: 31.h),
                    child: Card(
                      color: Theme.of(context).cardColor,
                      elevation: 2,
                      shadowColor: Helper.getColorFromHex("#000000"),
                      shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(8.r)),
                      child: Container(
                        width: double.infinity,
                        height: 225.41.h,
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                  top: 14.22.h, left: 27.w, right: 27.w),
                              child: Row(
                                children: [
                                  Text(
                                    "CMD :",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15.5.sp),
                                  ),
                                  Text(
                                    controller.listscolis[i].reference!,
                                    style: TextStyle(fontSize: 15.sp),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  top: 9.14.h, left: 27.w, right: 27.w),
                              child: Row(
                                children: [
                                  Text(
                                    'phone'.tr,
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15.5.sp),
                                  ),
                                  Text(
                                    controller.listscolis[i].phone!,
                                    style: TextStyle(fontSize: 15.sp),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  top: 8.13.h, left: 27.w, right: 27.w),
                              child: Row(
                                children: [
                                  Text(
                                    'seller'.tr,
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15.5.sp),
                                  ),
                                  Text(
                                    controller.listscolis[i].seller!,
                                    style: TextStyle(fontSize: 15.sp),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  top: 8.13.h, left: 27.w, right: 27.w),
                              child: Row(
                                children: [
                                  Text(
                                    'adresse'.tr,
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15.5.sp),
                                  ),
                                  Text(
                                    controller.listscolis[i].adresse!,
                                    style: TextStyle(fontSize: 15.sp),
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                      top: 8.13.h, left: 27.w, right: 27.w),
                                  child: Row(
                                    children: [
                                      Text(
                                        'status'.tr,
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15.5.sp),
                                      ),
                                      Text(
                                        controller.listscolis[i].status!,
                                        style: TextStyle(fontSize: 15.sp),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      right: 48.41.w, top: 8.13.h, left: 27.w),
                                  child: Row(
                                    children: [
                                      Text(
                                        'montant'.tr,
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15.5.sp),
                                      ),
                                      Text(
                                        '${controller.listscolis[i].montant}',
                                        style: TextStyle(fontSize: 15.sp),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  left: 24.38.w, right: 24.38.w),
                              child: Padding(
                                padding: EdgeInsets.only(top: 10.49.h),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    MaterialButton(
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(4.0.r),
                                      ),
                                      minWidth: 122.38.w,
                                      onPressed: () {
                                        Get.to(VoirEtatView());
                                      },
                                      child: Text(
                                        'show'.tr,
                                        style: TextStyle(
                                          color:
                                              Helper.getColorFromHex("#FFFFFF"),
                                          fontSize: 15.sp,
                                        ),
                                      ),
                                      color: Helper.getColorFromHex("#00B6FF"),
                                    ),
                                    MaterialButton(
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(4.0.r),
                                      ),
                                      minWidth: 122.38.w,
                                      onPressed: () {
                                        Get.to(ChangeEtatView());
                                      },
                                      child: Text(
                                        'changestat'.tr,
                                        style: TextStyle(
                                          color:
                                              Helper.getColorFromHex("#FFFFFF"),
                                          fontSize: 15.sp,
                                        ),
                                      ),
                                      color: Helper.getColorFromHex("#E77A13"),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
