import 'package:delivery_food/app/data/scanner_code.dart';
import 'package:delivery_food/helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../controllers/distribution_controller.dart';

class DistributionView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    DistributionController controller = Get.find<DistributionController>();
    return Scaffold(
        //backgroundColor: bacgroundColor,
        appBar: AppBar(
          toolbarHeight: 40.h,
          leadingWidth: 45.w,
          //backgroundColor: bacgroundColor,
          title: Text(
            'Distribution',
            style: TextStyle(
              color: Helper.getColorFromHex("#000000"),
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
                padding: EdgeInsets.only(left: 25.w, top: 43.h),
                child: Row(
                  children: [
                    Container(
                      width: 100.w,
                      height: 30.h,
                      child: Text(
                        "Livreur :",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25.sp,
                          color: Helper.getColorFromHex("#000000"),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 25.22.w),
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0.r),
                        ),
                        //  color: colorprimary ,
                        child: Container(
                          height: 28.h,
                          width: 200.78.w,
                          decoration: BoxDecoration(
                            color: Helper.getColorFromHex("#FFFFFF"),
                            borderRadius:
                                BorderRadius.all(Radius.circular(5.r)),
                            border: Border.all(
                              color: Helper.getColorFromHex("#FFFFFF"),
                            ),
                          ),
                          child: DropdownButton<String>(
                            icon: Icon(Icons.keyboard_arrow_down_sharp),
                            iconSize: 30.sp,
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                            ),
                            elevation: 16,
                            isExpanded: true,
                            hint: Text('  ' + 'Choisir un livreur'.tr),
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
                            ].map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text("  $value"),
                              );
                            }).toList(),
                            onChanged: (String? newValue) {},
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
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
                          color: Helper.getColorFromHex("#000000"),
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
                    height: 215.h,
                    child: ScannerCode(controller),
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
                          fontSize: 25.sp, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 25.w, left: 25.w, top: 12.h),
                child: GetBuilder<DistributionController>(
                  builder: (_dx) => Card(
                    elevation: 2,
                    shadowColor: Helper.getColorFromHex("#000000"),
                    shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(8.r)),
                    child:controller.listReferenceColi.isEmpty
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
                        
                    
                      },
                      child: Text("Valider"),
                      color: Helper.getColorFromHex("#FE875D"),
                    ),
                    MaterialButton(
                      onPressed: () {    controller.annulerScan();},
                      child: Text("Annuler"),
                      color: Helper.getColorFromHex("#00B6FF"),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
