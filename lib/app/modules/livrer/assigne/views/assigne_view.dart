import 'package:delivery_food/app/utils/toggle_theme_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import '../../../../../helper.dart';
import '../../../../data/scanner_code.dart';
import '../controllers/assigne_controller.dart';

class AssigneView extends GetView<AssigneController> {
  // controller = Get.find<AssigneController>();
  @override
  Widget build(BuildContext context) {
    ThemeToggleController themcontroller = Get.find();
    return GetBuilder<ThemeToggleController>(
      builder: (_dx) => Scaffold(
        // backgroundColor: bacgroundColor,
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: themcontroller.isSavedDarkMode()
                ? Helper.getColorFromHex("#FFFFFF")
                : Helper.getColorFromHex("#000000"),
          ),
          toolbarHeight: 40.h,
          leadingWidth: 45.w,
          // backgroundColor: bacgroundColor,
          title: Text(
            'assigned'.tr,
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
                padding: EdgeInsets.only(left: 25.w, top: 23.h),
                child: Row(
                  children: [
                    Container(
                      width: 62.w,
                      height: 30.h,
                      child: Text(
                        "Scan",
                        style: TextStyle(
                          color: themcontroller.isSavedDarkMode()
                              ? Helper.getColorFromHex("#FFFFFF")
                              : Helper.getColorFromHex("#000000"),
                          fontWeight: FontWeight.bold,
                          fontSize: 25.sp,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 25.w, left: 25.w, top: 7.h),
                child: Card(
                  elevation: 2,
                  shadowColor: Helper.getColorFromHex("#000000"),
                  shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(8.r)),
                  child: Container(
                    width: double.infinity,
                    child: ScannerCode(controller),
                    height: 215.h,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 25.w, top: 13.h),
                child: Row(
                  children: [
                    Text(
                      "Manuel",
                      style: TextStyle(
                          color: themcontroller.isSavedDarkMode()
                              ? Helper.getColorFromHex("#FFFFFF")
                              : Helper.getColorFromHex("#000000"),
                          fontSize: 25.sp,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 25.w, left: 25.w, top: 12.h),
                child: GetBuilder<AssigneController>(
                  builder: (_dx) => Card(
                    elevation: 2,
                    shadowColor: Helper.getColorFromHex("#000000"),
                    shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(8.r)),
                    child: controller.listReferenceColi.isEmpty
                        ? Container(
                            height: 50,
                          )
                        : Container(
                            width: double.infinity,
                            // height: 1000.h,
                            child: Wrap(
                              spacing: 5.0,
                              children: <Widget>[
                                for (var i in controller.listReferenceColi)
                                  Chip(
                                    label: new Text('${i}'),
                                    backgroundColor: Colors.pinkAccent,
                                  ),
                              ],
                            ),
                          ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 52.w, left: 52.w, top: 12.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MaterialButton(
                      onPressed: () {
                        print(controller.listReferenceColi);
                      },
                      child: Text("Valider"),
                      color: Helper.getColorFromHex("#FE875D"),
                    ),
                    MaterialButton(
                      onPressed: () async {
                        controller.annulerScan();
                      },
                      child: Text("Annuler"),
                      color: Helper.getColorFromHex("#00B6FF"),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
