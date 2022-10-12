import 'package:delivery_food/constante.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../controllers/paiment_controller.dart';

class PaimentView extends GetView<PaimentController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
       backgroundColor: bacgroundColor,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Padding(
                padding:  EdgeInsets.only(top: 20.h,left: 24.w,right: 24.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Builder(
                        builder: (context) {
                          return GestureDetector(
                            onTap:() => {Scaffold.of(context).openDrawer(),}
                            ,
                            child: Image.asset(
                              "assets/images/logo.png",
                              width:35.w ,
                              height:33.h,
                            ),
                          );

                        }
                    ),
                    Image.asset("assets/images/notification.png",
                      width:32.w ,
                      height:32.h,
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding:  EdgeInsets.only(top: 42.h,left: 31.w),
              child: Row(
                children: [
                  Text("Listes des Paiments",
                    style: TextStyle(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w700,
                         color: Colors.black
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding:  EdgeInsets.only(top: 18.h,left: 31.w),
              child: Row(
                children: [
                  Text("Tarif Livraison : 15 DH",
                    style: TextStyle(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w700,
                         color: Colors.black
                    ),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              child: ListView.builder(
                shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics() ,
                  itemCount: 4,
                  itemBuilder: (context,i){
                return Padding(
                  padding:  EdgeInsets.only(left: 31.w,right: 31.w),
                  child: Column(
                    children: [
                      Card(

                        shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(5.r)),
                        child: Padding(
                          padding:  EdgeInsets.only(bottom: 10.h),
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 12.h,left: 10.w,right: 10.w),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("N°: 1",
                                     style: TextStyle(
                                       fontWeight: FontWeight.w400,
                                       fontSize: 14.sp,
                                     ),
                                    ),
                                    Text("Montant :1174",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14.sp,
                                      ),),

                                  ],
                                ),

                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 12.h,left: 10.w,right: 10.w),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Commande livré : 14",
                                     style: TextStyle(
                                       fontWeight: FontWeight.w400,
                                       fontSize: 14.sp,
                                     ),
                                    ),
                                    Text("Commande refusé : 10 ",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12.sp,
                                      ),),

                                  ],
                                ),

                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 12.h,left: 10.w,right: 10.w),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("État : Réglé | Non  réglé",
                                     style: TextStyle(
                                       fontWeight: FontWeight.w400,
                                       fontSize: 14.sp,
                                     ),
                                    ),
                                    Text("Date : 14-05-2022",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14.sp,
                                      ),),

                                  ],
                                ),

                              ),
                            ],
                          ),
                        ) ,
                        elevation: 2,
                      ),
                      SizedBox(height: 31.h,)
                    ],
                  ),
                );
              }),
            )
          ],
        ),
      )
    );
  }
}
