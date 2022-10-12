import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../../../helper.dart';
import '../../../change_etat/views/change_etat_view.dart';
import '../../../change_etat/views/voir_etat_view.dart';
import '../controllers/colis_controller.dart';

class ColisView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ColisController controller = Get.find();
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 40.h, leadingWidth: 45.w,
          // backgroundColor: bacgroundColor,
          title: Text(
            'Colis',
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
                padding: EdgeInsets.only(left: 25.w, top: 51.h),
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
                                value: "mohamed",
                                /*items: <String>[
                                  'Choisir un livreur'.tr,
                                  'partnership'.tr,
                                  'marketing'.tr,
                                  'note'.tr,
                                  'other'.tr
                                ]*/
                                items: controller.dropdownlist
                                    .map<DropdownMenuItem<String>>(
                                        (String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text("  $value"),
                                  );
                                }).toList(),
                                onChanged: (String? newValue) async {
                                  controller.fetchColilistbyId();
                                })),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 23.w, right: 23.w, top: 29.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 0.w, right: 1.w),
                      child: GestureDetector(
                        onTap: () {
                          controller.changeEtatIndex(0);
                        },
                        child: Container(
                          height: 28.575998306274414.h,
                          width: 42.6400032043457.w,
                          // onPressed: (){},
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
                        onTap: () {
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
                          color: Helper.getColorFromHex("#FAFF00"),
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
                            color: Helper.getColorFromHex("#E77A13"),
                          )),
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
              GetBuilder<ColisController>(
                builder: (_dx) => ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: controller.listscolis.length,
                  itemBuilder: (context, i) => Padding(
                    padding:
                        EdgeInsets.only(right: 25.w, left: 25.w, top: 31.h),
                    child: Card(
                      elevation: 2,
                      shadowColor: Helper.getColorFromHex("#000000"),
                      shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(8.r)),
                      child: Container(
                        width: double.infinity, padding: EdgeInsets.all(10),
                        //  height: 250.h,
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                  top: 14.22.h, left: 27.w, right: 27.w),
                              child: Row(
                                children: [
                                  Text(
                                    'reference'.tr + ' :',
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
                                  top: 8.13.h, left: 27.w, right: 27.w),
                              child: Row(
                                children: [
                                  Text(
                                    'seller'.tr + " :",
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
                                    'client'.tr + " :",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15.5.sp),
                                  ),
                                  Text(
                                    controller.listscolis[i].client!,
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
                                    'phone'.tr + ' :',
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
                                    'city'.tr + ' :',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15.5.sp),
                                  ),
                                  Text(
                                    controller.listscolis[i].city!,
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
                                    'adresse'.tr + ' :',
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
                            Padding(
                              padding: EdgeInsets.only(
                                  top: 8.13.h, left: 27.w, right: 27.w),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    /* Padding(
                                    padding: EdgeInsets.only(
                                        top: 8.13.h, left: 27.w, right: 27.w),*/
                                    child: Row(
                                      children: [
                                        Text(
                                          'status'.tr + ' :',
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
                                  /*Padding(
                                    padding: EdgeInsets.only(
                                        right: 48.41.w, top: 8.13.h, left: 27.w),*/
                                  Expanded(
                                    child: Row(
                                      children: [
                                        Text(
                                          'montant'.tr,
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15.5.sp),
                                        ),
                                        Text(
                                          '${controller.listscolis[i].montant} DH',
                                          style: TextStyle(fontSize: 15.sp),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 10.w, right: 10.w),
                              child: Padding(
                                padding: EdgeInsets.only(top: 10.h),
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
                                        "Voir",
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
                                        "Changé l’état",
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
        ));
  }
}
