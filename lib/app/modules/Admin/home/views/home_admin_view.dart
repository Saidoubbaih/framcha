import 'package:delivery_food/app/data/drawer_page.dart';
import 'package:delivery_food/app/utils/toggle_theme_controller.dart';
import 'package:delivery_food/constante.dart';
import 'package:delivery_food/helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../controllers/home_controller.dart';

class HomeAdminView extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<HomeAdminController>();
    final listname = controller.etatnom;
    final listicon = controller.listicon;
    ThemeToggleController themcontroller = Get.find();
    return GetBuilder<ThemeToggleController>(
      builder: (_dx) => Scaffold(
          //backgroundColor: bacgroundColor,
          drawer: DrawerPAge(),
          appBar: AppBar(
            elevation: 0.0,
            //  backgroundColor: bacgroundColor,
            title: Container(
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Icon(
                  Icons.person,
                  color: Colors.black,
                  size: 30.sp,
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  children: [
                    Container(
                      width: 130.w,
                      child: Text(
                        "Mohammed Amine",
                        style: TextStyle(fontSize: 16.sp, color: Colors.black),
                      ),
                    ),
                    Container(
                      width: 130.w,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Livrirur",
                            style:
                                TextStyle(fontSize: 12.sp, color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ]),
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
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 5.h,
                ),
                Padding(
                  padding:
                      EdgeInsets.only(left: 36.0.w, right: 36.0.w, bottom: 0),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    color: Helper.getColorFromHex("#FFFFFF"),
                    elevation: 2,
                    child: Container(
                      height: 113.h,
                      width: 356.w,
                      decoration: BoxDecoration(
                        color: Helper.getColorFromHex("#FFFFFF"),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding:
                                EdgeInsets.only(top: 8.0.h, bottom: 15.0.h),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Icon(
                                  Icons.person,
                                  size: 32.69.sp,
                                  color: Colors.black,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(0.0),
                                  child: Card(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5.0),
                                    ),
                                    //  color: colorprimary ,
                                    child: Container(
                                        height: 28.h,
                                        width: 200.w,
                                        decoration: BoxDecoration(
                                          color: premaryColor,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(5)),
                                          border: Border.all(
                                            color: premaryColor,
                                          ),
                                        ),
                                        child: DropdownButton<String>(
                                            icon: Icon(Icons
                                                .keyboard_arrow_down_sharp),
                                            iconSize: 30,
                                            style: const TextStyle(
                                              color: Colors.black,
                                              fontSize: 16,
                                            ),
                                            elevation: 16,
                                            isExpanded: true,
                                            hint: Text(
                                                '  ' + 'Choisir un livreur'.tr),
                                            underline: Container(
                                              height: 2,
                                              // color: Colors.deepPurpleAccent,
                                            ),
                                            //  value: dropdownValue,
                                            value: "Choisir un livreur",
                                            items: <String>[
                                              'Choisir un livreur'.tr,
                                              'partnership'.tr,
                                              'marketing'.tr,
                                              'note'.tr,
                                              'other'.tr
                                            ].map<DropdownMenuItem<String>>(
                                                (String value) {
                                              return DropdownMenuItem<String>(
                                                value: value,
                                                child: Text("  $value"),
                                              );
                                            }).toList(),
                                            onChanged: (String? newValue) {})),
                                  ),
                                ),
                                Image.asset(
                                  "assets/images/metio.png",
                                  width: 25.w,
                                )
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              MaterialButton(
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                        new BorderRadius.circular(120.r)),
                                onPressed: () {},
                                child: Text(
                                  "Aujourd’huit",
                                  style: TextStyle(
                                      fontSize: 10.32.sp,
                                      color: Helper.getColorFromHex("#FFFFFF")),
                                  textAlign: TextAlign.center,
                                ),
                                height: 31.86.sp,
                                minWidth: 130.sp,
                                color: premaryColor,
                              ),
                              MaterialButton(
                                minWidth: 130.sp,
                                height: 31.86.sp,
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                        new BorderRadius.circular(12.r)),
                                onPressed: () {},
                                child: Text(
                                  "Depuis 3/15 jours",
                                  style: TextStyle(
                                      fontSize: 10.32.sp,
                                      color: Helper.getColorFromHex("#FFFFFF")),
                                  textAlign: TextAlign.center,
                                ),
                                color: premaryColor,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  child: Padding(
                    padding:
                        EdgeInsets.only(left: 36.0.w, right: 36.0.w, top: 10),
                    child: Text(
                      'paiement'.tr,
                      style: TextStyle(
                          color: themcontroller.isSavedDarkMode()
                              ? Helper.getColorFromHex("#FFFFFF")
                              : Helper.getColorFromHex("#000000"),
                          fontSize: 24.29.sp),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: 36.0.w, right: 36.0.w, top: 13.89.h, bottom: 19.h),
                  child: Container(
                      height: 113.h,
                      width: 403.w,
                      decoration: BoxDecoration(
                        color: premaryColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 16.w,
                                  top: 8.99.h,
                                  right: 16.w,
                                ),
                                child: Text(
                                  'total_delivery'.tr,
                                  style: TextStyle(
                                      fontSize: 18.sp,
                                      color: Helper.getColorFromHex("#FFFFFF")),
                                ),
                              ),
                              Obx(
                                () => Padding(
                                  padding: EdgeInsets.only(
                                      left: 16.w, right: 16.0.w),
                                  child: Text(
                                    controller.StatusPaie.total_delivery
                                        .toString(),
                                    style: TextStyle(
                                      fontSize: 40.sp,
                                      fontWeight: FontWeight.bold,
                                      color: Helper.getColorFromHex("#FFFFFF"),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                bottom: 21.11.h,
                                top: 2.h,
                                right: 10.w,
                                left: 10.w),
                            child: Image.asset(
                              "assets/images/liver_backet.png",
                              width: 80.w,
                            ),
                          )
                        ],
                      )),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 36.w, left: 36.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 112.85.h,
                        //width: 145.w,
                        decoration: BoxDecoration(
                          color: premaryColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(10),
                                  width: 99.w,
                                  height: 60.h,
                                  child: Text(
                                    'total_paid'.tr,
                                    style: TextStyle(
                                        fontSize: 17.98.sp,
                                        color:
                                            Helper.getColorFromHex("#FFFFFF")),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image.asset(
                                    "assets/images/check.png",
                                    height: 30.91.h,
                                    width: 30.92.w,
                                  ),
                                ),
                              ],
                            ),
                            Obx(
                              () => Padding(
                                padding: EdgeInsets.only(right: 8.w, left: 8.w),
                                child: Text(
                                  controller.StatusPaie.total_paid.toString(),
                                  style: TextStyle(
                                      fontSize: 29.96.sp,
                                      fontWeight: FontWeight.bold,
                                      color: Helper.getColorFromHex("#FFFFFF")),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 112.85.h,
                        //width: 130.w,
                        decoration: BoxDecoration(
                          color: premaryColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(10),
                                  width: 99.w,
                                  height: 60.h,
                                  child: Text(
                                    'total_no_paid'.tr,
                                    style: TextStyle(
                                        fontSize: 17.98.sp,
                                        color:
                                            Helper.getColorFromHex("#FFFFFF")),
                                  ),
                                ),
                                Image.asset(
                                  "assets/images/rejection.png",
                                  width: 40.91.w,
                                ),
                              ],
                            ),
                            Obx(
                              () => Padding(
                                padding:
                                    EdgeInsets.only(right: 10.w, left: 10.w),
                                child: Text(
                                  controller.StatusPaie.total_no_paid
                                      .toString(),
                                  style: TextStyle(
                                      fontSize: 29.96.sp,
                                      fontWeight: FontWeight.bold,
                                      color: Helper.getColorFromHex("#FFFFFF")),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.only(left: 36.w, right: 36.w, top: 27.99.h),
                  child: Container(
                    height: 113.h,
                    width: 403.w,
                    decoration: BoxDecoration(
                      color: premaryColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 8.w, right: 8.w),
                              child: Text(
                                'total_benefice'.tr,
                                style: TextStyle(
                                    fontSize: 18.sp,
                                    color: Helper.getColorFromHex("#FFFFFF"),
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Obx(
                              () => Padding(
                                padding:
                                    EdgeInsets.only(left: 16.w, right: 16.w),
                                child: Text(
                                  controller.StatusPaie.total_benefice
                                      .toString(),
                                  style: TextStyle(
                                      fontSize: 40.sp,
                                      color: Helper.getColorFromHex("#FFFFFF"),
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            "assets/images/salary.png",
                            width: 80.w,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  child: Padding(
                    padding:
                        EdgeInsets.only(left: 36.0.w, right: 36.0.w, top: 10),
                    child: Text(
                      'Command'.tr,
                      style: TextStyle(
                          color: themcontroller.isSavedDarkMode()
                              ? Helper.getColorFromHex("#FFFFFF")
                              : Helper.getColorFromHex("#000000"),
                          fontSize: 24.29.sp),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 36.w, right: 36.w),
                  child: GetBuilder<HomeAdminController>(
                    builder: (_dx) => GridView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                          maxCrossAxisExtent: 202.w,
                          mainAxisExtent: 112.85.h,
                          childAspectRatio: 2,
                          crossAxisSpacing: 10.w,
                          mainAxisSpacing: 10.h),
                      itemCount: listname.length,
                      itemBuilder: (context, i) => Container(
                        padding: EdgeInsets.all(8),
                        height: 112.85.h,
                        width: 172.83.w,
                        decoration: BoxDecoration(
                          color: premaryColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          children: [
                            Container(
                              width: double.infinity,
                              child: Text(
                                // controller.etatnom[i].toString(),
                                listname[i].tr,
                                textDirection: TextDirection.rtl,
                                style: TextStyle(
                                    fontSize: 22.83.sp,
                                    color: Helper.getColorFromHex("#FFFFFF")),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Image.asset(
                                  listicon[i],
                                  width: 62.62.w,
                                  height: 62.62.h,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(right: 10.23.w),
                                  child: Text(
                                    // '${controller.ColiModelList}',
                                    (controller.commandStatus.elementAt(i) !=
                                            null)
                                        ? '${controller.commandStatus[i]}'
                                        : '0',
                                    textDirection: TextDirection.rtl,
                                    style: TextStyle(
                                        fontSize: 23.71.sp,
                                        color:
                                            Helper.getColorFromHex("#FFFFFF"),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                )
              ],
            ),
          )),
    );
  }
}
