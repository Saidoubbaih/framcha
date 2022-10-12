import 'package:delivery_food/app/data/bacground.dart';
import 'package:delivery_food/app/models/testmodels/testcontroller.dart';
import 'package:delivery_food/app/modules/Admin/distribution/controllers/distribution_controller.dart';
import 'package:delivery_food/app/modules/Admin/home/controllers/home_controller.dart';
import 'package:delivery_food/app/modules/Admin/ramassage/controllers/ramassage_controller.dart';
import 'package:delivery_food/app/modules/Admin/retour/controllers/retour_controller.dart';
import 'package:delivery_food/app/modules/livrer/assigne/controllers/assigne_controller.dart';
import 'package:delivery_food/app/modules/livrer/colislivrure/controllers/colislivrure_controller.dart';
import 'package:delivery_food/app/modules/livrer/root/views/root_view.dart';
import 'package:delivery_food/app/utils/toggle_language.dart';
import 'package:delivery_food/helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../Admin/colis/controllers/colis_controller.dart';
import '../../Admin/root/controllers/root_controller.dart';
import '../../Admin/root/views/root_view.dart';
import '../../livrer/distributionlivrure/controllers/distributionlivrure_controller.dart';
import '../../livrer/etat/controllers/etat_controller.dart';
import '../../livrer/home/controllers/home_controller.dart';
import '../../livrer/root/controllers/root_controller.dart';
import '../../livrer/rotourlivrure/controllers/rotourlivrure_controller.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    LoginController logcontroller = Get.find();

    return Scaffold(
      backgroundColor: Helper.getColorFromHex("#F5E9D4"),

      body: Background(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 50.h, left: 0.w, right: 70.w),
              child: Image.asset(
                "assets/images/logo.png",
                width: 182.w,
                height: 115.h,
              ),
            ),
            Padding(
                padding: EdgeInsets.only(left: 0.w, right: 80.w, top: 2.h),
                child: Text(
                  "FRAMCHA",
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 40.sp,
                      color: Colors.black),
                )),
            Padding(
                padding: EdgeInsets.only(right: 50.w, left: 0.w, top: 51.h),
                child: Container(
                    width: 280.w,
                    //padding: EdgeInsets.all(10.0),
                    child: TextField(
                      controller: logcontroller.email,
                      autocorrect: true,
                      style: TextStyle(
                        height: 1.0.h,
                      ),
                      decoration: InputDecoration(
                        hintText: 'Email',
                        // prefixIcon: Icon(Icons.email),
                        suffixIcon: Image.asset("assets/images/username.png"),
                        hintStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w300),
                        filled: true,
                        fillColor: Colors.transparent,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(12.0)),
                          borderSide: BorderSide(color: Colors.black, width: 1),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          borderSide: BorderSide(color: Colors.black, width: 1),
                        ),
                      ),
                    ))),
            Padding(
                padding: EdgeInsets.only(right: 50.w, left: 0.w, top: 34.h),
                child: Container(
                    width: 280.w,
                    //padding: EdgeInsets.all(10.0),
                    child: TextField(
                      autocorrect: true,
                      controller: logcontroller.password,
                      style: TextStyle(
                        height: 1.h,
                      ),
                      decoration: InputDecoration(
                        hintText: 'Password',

                        // prefixIcon: Icon(Icons.email),
                        suffixIcon: Image.asset("assets/images/yeuis.png"),
                        hintStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w300),
                        filled: true,
                        fillColor: Colors.transparent,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(12.0)),
                          borderSide: BorderSide(color: Colors.black, width: 1),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          borderSide: BorderSide(color: Colors.black, width: 1),
                        ),
                      ),
                    ))),
            Padding(
              padding: EdgeInsets.only(left: 20.w),
              child: Row(
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "mot de passe oublié ?",
                      style: TextStyle(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                          decoration: TextDecoration.underline),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 165.w, right: 0, top: 10.h),
              child: Column(
                children: [
                  MaterialButton(
                    minWidth: 150.14.w,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20.r),
                        bottomLeft: Radius.circular(20.r),
                      ),
                    ),
                    color: Helper.getColorFromHex("#E77A13"),
                    onPressed: () async {
                      //await controller.Login();
                      //  LoginController control = Get.put(LoginController());
                      Get.put(RootAdminController());
                      Get.put(HomeAdminController());
                
                      Get.put(RamassageController());
                      Get.put(ColisController());
                      Get.put(DistributionController());
                      Get.put(RetourController());
                      Get.put(ToggleLanguageController());
                      Get.put(HomeLivreureController());
                       //await control.Login();
                      Get.to(() => RootAdminView());
                    },
                    child: Row(
                      children: [
                        Text(
                          "Se connecter ",
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 15.sp,
                              color: Colors.black),
                        ),
                        SizedBox(
                          width: 20.w,
                        ),
                        Image.asset("assets/images/login.png")
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 160.14.w,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20.r),
                        bottomLeft: Radius.circular(20.r),
                      ),
                    ),
                    color: Helper.getColorFromHex("#E77A13"),
                    onPressed: () async {
                      // LoginController control = Get.put(LoginController());
                      Get.put(HomeLivreureController());
                      Get.put(ColislivrureController());
                      Get.put(RotourlivrureController());
                      Get.put(AssigneController());
                      Get.put(EtatController());
                      Get.put(ProductController());
                      Get.put(DistributionlivrureController());
                      Get.put(ToggleLanguageController());
                      Get.put(RootLivrirueController());
                      Get.put(RootAdminController());
                      Get.put(HomeAdminController());

                      //  await control.Login();

                      Get.to(RootLivrirueView());
                      // Get.to(HomePage());
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Inscription  ",
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 15.sp,
                              color: Colors.black),
                        ),
                        SizedBox(
                          width: 20.w,
                        ),
                        Image.asset("assets/images/fingerprint 1.png")
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // Padding(
            //   padding: EdgeInsets.only(
            //     left: 190.w,
            //     top: 20.h
            //   ),
            //   child:
            //         MaterialButton(
            //           minWidth: 160.14.w,
            //           shape: RoundedRectangleBorder(
            //             borderRadius: BorderRadius.only(
            //               topLeft: Radius.circular(20.r),
            //               bottomLeft: Radius.circular(20.r),
            //             ),
            //           ),
            //           color: Helper.getColorFromHex("#E77A13"),
            //           onPressed: (){},
            //           child: Row(
            //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //             children: [
            //               Text("Inscription  ",
            //                 style: TextStyle(
            //                     fontWeight: FontWeight.w700,
            //                     fontSize: 15.sp,
            //                     color: Colors.black
            //                 ),),
            //               SizedBox(width: 20.w,),
            //               Image.asset("assets/images/fingerprint 1.png")
            //             ],
            //           ),
            //         ),
            // ),
          ],
        ),
      ),
      // Positioned(
      //     child: Column(
      //       children: [
      //         Padding(
      //           padding:EdgeInsets.only(top: 50.h,left: 0.w,right: 70.w),
      //           child: Image.asset("assets/images/logo.png",
      //             width: 182.w, height: 115.h,
      //           ),
      //         ),
      //         Padding(
      //             padding: EdgeInsets.only(
      //                 left: 0.w,
      //                 right: 70.w,
      //                 top: 2.h
      //             ),
      //             child:Text("FRAMCHA",
      //               style: TextStyle(
      //                   fontWeight: FontWeight.w700,
      //                   fontSize: 40.sp,
      //                   color: Colors.black
      //               ),
      //
      //             )
      //         ),
      //         Padding(
      //             padding: EdgeInsets.only(left: 0.w,top: 51.h),
      //             child: Container(
      //                 width: 300.w,
      //                 //padding: EdgeInsets.all(10.0),
      //                 child: TextField(
      //                   autocorrect: true,
      //                   style: TextStyle( height: 0.30.h,),
      //
      //                   decoration: InputDecoration(
      //                     hintText: 'Email',
      //                     // prefixIcon: Icon(Icons.email),
      //                     suffixIcon:Image.asset("assets/images/username.png") ,
      //                     hintStyle: TextStyle(color: Colors.grey),
      //                     filled: true,
      //                     fillColor: Colors.white70,
      //                     enabledBorder: OutlineInputBorder(
      //                       borderRadius: BorderRadius.all(Radius.circular(12.0)),
      //                       borderSide: BorderSide(color: Colors.black, width: 1),
      //                     ),
      //                     focusedBorder: OutlineInputBorder(
      //                       borderRadius: BorderRadius.all(Radius.circular(10.0)),
      //                       borderSide: BorderSide(color: Colors.black, width:1),
      //                     ),
      //                   ),)
      //             )
      //         ),
      //         Padding(
      //             padding: EdgeInsets.only(left: 0.w,top: 34.h),
      //             child: Container(
      //                 width: 300.w,
      //                 //padding: EdgeInsets.all(10.0),
      //                 child: TextField(
      //                   autocorrect: true,
      //                   style: TextStyle( height: 0.30.h,),
      //
      //                   decoration: InputDecoration(
      //                     hintText: 'Password',
      //                     // prefixIcon: Icon(Icons.email),
      //                     suffixIcon:Image.asset("assets/images/yeuis.png") ,
      //                     hintStyle: TextStyle(color: Colors.grey),
      //                     filled: true,
      //                     fillColor: Colors.white70,
      //                     enabledBorder: OutlineInputBorder(
      //                       borderRadius: BorderRadius.all(Radius.circular(12.0)),
      //                       borderSide: BorderSide(color: Colors.black, width: 1),
      //                     ),
      //                     focusedBorder: OutlineInputBorder(
      //                       borderRadius: BorderRadius.all(Radius.circular(10.0)),
      //                       borderSide: BorderSide(color: Colors.black, width:1),
      //                     ),
      //                   ),)
      //             )
      //         ),
      //         Padding(
      //           padding:  EdgeInsets.only(left: 25.w),
      //           child: Row(
      //             children: [
      //               TextButton(
      //                 onPressed:(){},
      //                 child:
      //                 Text("mot de passe oublié ?",
      //                   style: TextStyle(
      //                       fontSize: 15.sp,
      //                       fontWeight: FontWeight.w400,
      //                       color: Colors.black
      //                   ),
      //                 )
      //                 ,),
      //             ],
      //           ),
      //
      //         ),
      //
      //       ],
      //     )
      //
      // ),
      /*................*/
      //     Positioned(
      //       right: 0.w,
      //       bottom: 130.h,
      //       child:
      //       MaterialButton(
      //         minWidth: 150.14.w,
      //         shape: RoundedRectangleBorder(
      //           borderRadius: BorderRadius.only(
      //             topLeft: Radius.circular(20.r),
      //             bottomLeft: Radius.circular(20.r),
      //           ),
      //         ),
      //         color: Helper.getColorFromHex("#E77A13"),
      //         onPressed: (){},
      //         child: Row(
      //
      //           children: [
      //             Text("Se connecter ",
      //               style: TextStyle(
      //                   fontWeight: FontWeight.w700,
      //                   fontSize: 15.sp,
      //                   color: Colors.black
      //               ),),
      //             SizedBox(width: 20.w,),
      //             Image.asset("assets/images/login.png")
      //           ],
      //         ),
      //
      //       ),
      //     ),
      //     Positioned(
      //       right: 0.w,
      //       bottom: 70.h,
      //       child:
      //       MaterialButton(
      //         minWidth: 160.14.w,
      //         shape: RoundedRectangleBorder(
      //           borderRadius: BorderRadius.only(
      //             topLeft: Radius.circular(20.r),
      //             bottomLeft: Radius.circular(20.r),
      //           ),
      //         ),
      //         color: Helper.getColorFromHex("#E77A13"),
      //         onPressed: (){},
      //         child: Row(
      //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //           children: [
      //             Text("Inscription  ",
      //               style: TextStyle(
      //                   fontWeight: FontWeight.w700,
      //                   fontSize: 15.sp,
      //                   color: Colors.black
      //               ),),
      //             SizedBox(width: 20.w,),
      //             Image.asset("assets/images/fingerprint 1.png")
      //           ],
      //         ),
      //
      //       ),
      //     ),
      //   ],
      // )
    );
  }
}
