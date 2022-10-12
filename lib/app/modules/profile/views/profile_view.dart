import 'package:delivery_food/app/data/drawer_page.dart';
import 'package:delivery_food/app/utils/toggle_theme_controller.dart';
import 'package:delivery_food/helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../../../../constante.dart';
import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  final controller = Get.put(ProfileController());
  @override
  Widget build(BuildContext context) {
    ThemeToggleController themcontroller = Get.find();
    return GetBuilder<ThemeToggleController>(
      builder: (_dx) => Scaffold(
           drawer: DrawerPAge(),
        appBar: AppBar(
          elevation: 1.0,
          //   backgroundColor: bacgroundColor,
          title: Text(
            "Livreur",
            style: TextStyle(
              fontWeight: FontWeight.w300,
              fontSize: 18.01.sp,
              //color: Colors.black54,
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
        ),
        // backgroundColor:bacgroundColor,
        body: SingleChildScrollView(
          child: Column(
            children: [
              /*  Container(
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
                height: 15.h,
              ),
              Container(
                child: Column(
                  children: [
                    Icon(
                      Icons.person,
                      size: 81.sp,
                    ),
                    Text(
                      "Abdeltif CHEBANI",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 18.sp,
                        color: themcontroller.isSavedDarkMode()
                            ? Helper.getColorFromHex("#FFFFFF")
                            : Helper.getColorFromHex("#000000"),
                      ),
                    ),
                    Text(
                      "Livreur",
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 13.sp,
                        color: themcontroller.isSavedDarkMode()
                            ? Helper.getColorFromHex("#FFFFFF")
                            : Helper.getColorFromHex("#000000"),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 25.w, top: 4.h),
                child: Row(
                  children: [
                    Text(
                      "Reférence :",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 20.sp,
                        color: themcontroller.isSavedDarkMode()
                            ? Helper.getColorFromHex("#FFFFFF")
                            : Helper.getColorFromHex("#000000"),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 25.w, left: 31.w, top: 12.h),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 1),
                    color: themcontroller.isSavedDarkMode()
                        ? Helper.getColorFromHex("#3282B8")
                        : Helper.getColorFromHex("#F5F5F5"),
                  ),
                  height: 36.h,
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 1.h, left: 8.w),
                      child: TextField(
                        controller: controller.reference,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 25.w, left: 31.w, top: 12.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Container(
                          width: 135.w,
                          child: Text(
                            "Nom :",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w700,
                              color: themcontroller.isSavedDarkMode()
                                  ? Helper.getColorFromHex("#FFFFFF")
                                  : Helper.getColorFromHex("#000000"),
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 1),
                            color: themcontroller.isSavedDarkMode()
                                ? Helper.getColorFromHex("#3282B8")
                                : Helper.getColorFromHex("#F5F5F5"),
                          ),
                          width: 130.w,
                          height: 36.h,
                          child: TextField(
                            controller: controller.nome,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          width: 135.w,
                          child: Text(
                            "Prénom :",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w700,
                              color: themcontroller.isSavedDarkMode()
                                  ? Helper.getColorFromHex("#FFFFFF")
                                  : Helper.getColorFromHex("#000000"),
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 1),
                            color: themcontroller.isSavedDarkMode()
                                ? Helper.getColorFromHex("#3282B8")
                                : Helper.getColorFromHex("#F5F5F5"),
                          ),
                          width: 130.w,
                          height: 36.h,
                          child: Center(
                            child: TextField(
                              controller: controller.prenom,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 25.w, left: 31.w, top: 12.h),
                child: Container(
                  width: double.infinity,
                  child: Text(
                    "Mot de passe :",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w700,
                        color: themcontroller.isSavedDarkMode()
                            ? Helper.getColorFromHex("#FFFFFF")
                            : Helper.getColorFromHex("#000000"),),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 25.w, left: 31.w, top: 12.h),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 1),
                    color: themcontroller.isSavedDarkMode()
                        ? Helper.getColorFromHex("#3282B8")
                        : Helper.getColorFromHex("#F5F5F5"),
                  ),
                  height: 36.h,
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 1.h, left: 8.w),
                      child: TextField(
                        controller: controller.motpasse,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 25.w, left: 31.w, top: 12.h),
                child: Container(
                  width: double.infinity,
                  child: Text(
                    "Tél 1 :",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w700,
                      color: themcontroller.isSavedDarkMode()
                          ? Helper.getColorFromHex("#FFFFFF")
                          : Helper.getColorFromHex("#000000"),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 25.w, left: 31.w, top: 12.h),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 1),
                    color: themcontroller.isSavedDarkMode()
                        ? Helper.getColorFromHex("#3282B8")
                        : Helper.getColorFromHex("#F5F5F5"),
                  ),
                  height: 36.h,
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 1.h, left: 8.w),
                      child: TextField(
                        controller: controller.tele1,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 25.w, left: 31.w, top: 12.h),
                child: Container(
                  width: double.infinity,
                  child: Text(
                    "Tél 2 :",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w700,
                      color: themcontroller.isSavedDarkMode()
                          ? Helper.getColorFromHex("#FFFFFF")
                          : Helper.getColorFromHex("#000000"),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 25.w, left: 31.w, top: 12.h),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 1),
                    color: themcontroller.isSavedDarkMode()
                        ? Helper.getColorFromHex("#3282B8")
                        : Helper.getColorFromHex("#F5F5F5"),
                  ),
                  height: 36.h,
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 1.h, left: 8.w),
                      child: TextField(
                        controller: controller.tele2,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 25.w, left: 31.w, top: 12.h),
                child: Card(
                  color: bacgroundColor,
                  elevation: 5,
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 3.w),
                        child: Wrap(
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Text(
                                  "Contrat :",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 15.71.sp,
                                  ),
                                ),
                                Text(
                                  "Oui/Non+",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 13.71.sp,
                                  ),
                                ),
                              ],
                            ),
                            Wrap(
                              children: [
                                Text("Date inscription :"),
                                Text("2022-05-05"),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 7.51,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 3.w),
                        child: Row(
                          children: [
                            Text(
                              "Ville :",
                              style: TextStyle(
                                color: Helper.getColorFromHex("#000000"),
                                fontSize: 15.71.sp,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 3.w, right: 3.w),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: Helper.getColorFromHex("#E77A13"),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(4))),
                              width: 60.51.w,
                              height: 24.55.h,
                              child: Center(
                                child: Text(
                                  "Agadir",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 15.78.sp,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  color: Helper.getColorFromHex("#E77A13"),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(4))),
                              width: 60.51.w,
                              height: 24.55.h,
                              child: Center(
                                child: Text(
                                  "Drarga",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 15.78.sp,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  color: Helper.getColorFromHex("#E77A13"),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(4))),
                              width: 60.51.w,
                              height: 24.55.h,
                              child: Center(
                                child: Text(
                                  "Inzegan",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 15.78.sp,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  color: Helper.getColorFromHex("#E77A13"),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(4))),
                              width: 60.51.w,
                              height: 24.55.h,
                              child: Center(
                                child: Text(
                                  "Dchiera",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 15.78.sp,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 3.h,
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 25.w, left: 31.w, top: 12.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MaterialButton(
                      minWidth: 142.w,
                      shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(4)),
                      color: Helper.getColorFromHex("#EE7E1B"),
                      onPressed: () {},
                      child: Text(
                        "Confirmer",
                        style: TextStyle(
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w400,
                            color: Helper.getColorFromHex("#000000")),
                      ),
                    ),
                    MaterialButton(
                      minWidth: 142.w,
                      shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(4)),
                      color: Helper.getColorFromHex("#EE7E1B"),
                      onPressed: () {
                        Get.back();
                      },
                      child: Text(
                        "Annuler",
                        style: TextStyle(
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w400,
                            color: Helper.getColorFromHex("#000000")),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 3.h,
              )
            ],
          ),
        ),
      ),
    );
  }
}
