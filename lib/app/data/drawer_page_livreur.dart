import 'package:delivery_food/app/modules/login/views/login_view.dart';
import 'package:delivery_food/app/modules/profile/views/profile_view.dart';
import 'package:delivery_food/app/utils/toggle_language.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:get/get.dart';
import '../modules/paiment/views/paiment_view.dart';
import '../modules/responsable/views/responsable_view.dart';
import '../utils/toggle_theme_controller.dart';

// ignore: must_be_immutable
class DrawerPageLivreur extends StatelessWidget {
  DrawerPageLivreur({Key? key}) : super(key: key);

  ThemeToggleController themcontroller = Get.find();
  ToggleLanguageController langController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 258.w,
      height: double.infinity,
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              SizedBox(
                height: 43.h,
              ),
              Container(
                child: Container(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.person,
                          color: Colors.black,
                          size: 45.sp,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          children: [
                            Container(
                              width: 130.w,
                              child: Text(
                                "Amine",
                                style: TextStyle(
                                    fontSize: 18.sp,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                            ),
                            Container(
                              width: 130.w,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "achteur",
                                    style: TextStyle(
                                        fontSize: 15.sp, color: Colors.black),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ]),
                ),
              ),
              SizedBox(
                height: 32.h,
              ),
              Container(
                height: 1.h,
                width: double.infinity,
                color: Colors.black54,
              ),
              Padding(
                padding: EdgeInsets.only(left: 20.w),
                child: InkWell(
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/images/home.png",
                        width: 30.w,
                        height: 30.h,
                      ),
                      SizedBox(
                        width: 18.w,
                      ),
                      Text(
                        "Accueil",
                        style: TextStyle(
                            fontSize: 18.sp, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 15.h, left: 20.w),
                child: InkWell(
                  onTap: () => Get.to(ProfileView()),
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/images/man.png",
                        width: 30.w,
                        height: 30.h,
                      ),
                      SizedBox(
                        width: 18.w,
                      ),
                      Text(
                        "Profil",
                        style: TextStyle(
                            fontSize: 18.sp, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 15.h, left: 20.w),
                child: InkWell(
                  onTap: () => Get.to(ResponsableView()),
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/images/responsibility.png",
                        width: 30.w,
                        height: 30.h,
                      ),
                      SizedBox(
                        width: 18.w,
                      ),
                      Text(
                        "Responsable",
                        style: TextStyle(
                            fontSize: 18.sp, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 15.h, left: 20.w),
                child: InkWell(
                  onTap: () => Get.to(PaimentView()),
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/images/wallet1.png",
                        width: 30.w,
                        height: 30.h,
                      ),
                      SizedBox(
                        width: 18.w,
                      ),
                      Text(
                        "Paiment",
                        style: TextStyle(
                            fontSize: 18.sp, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 15.h, left: 20.w, right: 0.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      child: Row(
                        children: [
                          Image.asset(
                            "assets/images/belgium.png",
                            width: 30.w,
                            height: 30.h,
                          ),
                          SizedBox(
                            width: 18.w,
                          ),
                          Text(
                            "Language",
                            style: TextStyle(
                                fontSize: 18.sp, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                    FlutterSwitch(
                      width: 50.23.w,
                      height: 28.0.h,
                      activeTextFontWeight: FontWeight.bold,
                      inactiveTextFontWeight: FontWeight.bold,
                      valueFontSize: 10.0,
                      toggleSize: 10.0,
                      //  activeIcon: Icon(Icons.cached),
                      activeText: "AR",
                      inactiveText: "FR",
                      // toggleColor: Colors.red,
                      value: langController.selectedLanguage == 'fr'
                          ? false
                          : true,
                      borderRadius: 10.0,
                      padding: 8.0,
                      showOnOff: true,
                      onToggle: (value) {
                        if (value)
                          langController.changeLanguage = 'ar';
                        else
                          langController.changeLanguage = 'fr';
                      },
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 15.h, left: 20.w, right: 0.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      child: Row(
                        children: [
                          Image.asset(
                            "assets/images/dark-mode.png",
                            width: 30.w,
                            height: 30.h,
                          ),
                          SizedBox(
                            width: 18.w,
                          ),
                          Text(
                            "Mode sombre",
                            style: TextStyle(
                                fontSize: 18.sp, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                    GetBuilder<ThemeToggleController>(
                        builder: (themcontroller) {
                      return Switch.adaptive(
                          value: themcontroller.isSavedDarkMode(),
                          onChanged: (value) {
                            themcontroller.changeThemeMode();
                            /* Get.changeThemeMode(
                                  value ? ThemeMode.dark : ThemeMode.light);
                              controller.toggleTheme(value);*/
                          }
                          //  controller.toggleTheme(value)

                          );
                    })
                    /* FlutterSwitch(
                      width: 50.23.w,
                      height: 25.0.h,
                      activeTextFontWeight: FontWeight.bold,
                      inactiveTextFontWeight: FontWeight.bold,
                      toggleSize: 10.0,
                      //  activeIcon: Icon(Icons.cached),

                      // toggleColor: Colors.red,
                      value: false,
                      borderRadius: 30.0,
                      padding: 8.0,
                      onToggle: (val) {},
                    ),*/
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 15.h, left: 20.w, right: 15.w),
                child: InkWell(
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/images/service.png",
                        width: 30.w,
                        height: 30.h,
                      ),
                      SizedBox(
                        width: 18.w,
                      ),
                      Text(
                        "Support",
                        style: TextStyle(
                            fontSize: 18.sp, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 20.h, left: 20.w),
                child: InkWell(
                   onTap: () => {
                    Get.to(() => LoginView()),
                  },
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/images/log-out.png",
                        width: 30.w,
                        height: 30.h,
                      ),
                      SizedBox(
                        width: 18.w,
                      ),
                      Text(
                        "Se déconnecter",
                        style: TextStyle(
                            fontSize: 18.sp, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
