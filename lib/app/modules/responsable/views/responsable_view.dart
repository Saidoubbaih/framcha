import 'package:delivery_food/helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../../../../constante.dart';
import '../controllers/responsable_controller.dart';

class ResponsableView extends GetView<ResponsableController> {
  final controller =Get.put(ResponsableController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1.0,
        backgroundColor: bacgroundColor,
        title: Text("Livreur",
          style: TextStyle(
            fontWeight: FontWeight.w300,
            fontSize: 18.01.sp,
            color: Colors.black54,

          ),
        ),
        centerTitle: true,
      ),
      backgroundColor:bacgroundColor,
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
                              width:45.w ,
                              height:45.h,
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
            Container(
              child: Column(
                children: [
                  Icon(
                    Icons.person,
                    size: 81.sp,
                  ),
                  Text("Abdeltif CHEBANI"
                    ,style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 18.sp,
                      color: Colors.black54,

                    ),
                  ),
                  Text("Responsable"
                    ,style: TextStyle(
                      fontWeight: FontWeight.w300,
                      fontSize: 13.sp,
                      color: Colors.black54,

                    ),)
                ],
              ),
            ),
            Padding(
              padding:  EdgeInsets.only(left: 25.w,top: 4.h),
              child: Row(
                children: [
                  Text("Reférence :",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 20.sp,
                      color: Colors.black54,

                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding:  EdgeInsets.only(right: 25.w,left: 31.w,top: 12.h),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                      color: Colors.black,
                      width:1),
                ),
                height:36.h ,
                child: Center(
                  child: Padding(
                    padding:  EdgeInsets.only(bottom: 1.h,left: 8.w),
                    child: TextField(
                      controller: controller.reference,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding:  EdgeInsets.only(right: 25.w,left: 31.w,top: 12.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Container(
                        width: 135.w,
                        child: Text("Nom :",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w700,
                              color: Colors.black
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.black,
                              width:1),
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
                        width:135.w,
                        child: Text("Prénom :",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w700,
                              color: Colors.black
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.black,
                              width:1),
                        ),
                        width: 130.w,
                        height: 36.h,
                        child: Center(
                          child:  TextField(
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
              padding:  EdgeInsets.only(right: 25.w,left: 31.w,top: 12.h),
              child: Container(
                width: double.infinity,
                child: Text("Email :",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w700,
                      color: Colors.black
                  ),
                ),
              ),
            ),
            Padding(
              padding:  EdgeInsets.only(right: 25.w,left: 31.w,top: 12.h),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                      color: Colors.black,
                      width:1),
                ),
                height:36.h ,
                child: Center(
                  child: Padding(
                    padding:  EdgeInsets.only(bottom: 1.h,left: 8.w),
                    child: TextField(
                      controller: controller.email,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding:  EdgeInsets.only(right: 25.w,left: 31.w,top: 12.h),
              child: Row(
                children: [
                  Container(

                    width: 180.w,
                    child: MaterialButton(
                      minWidth: 200.w,
                      color: Helper.getColorFromHex("#EE7E1B"),
                      onPressed: (){},
                      child: Row(
                        children: [
                          Icon(Icons.phone , size: 30.sp,),
                          SizedBox(width: 27.24.w,),
                          Text("Appeler"
                          ,style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 20.sp,

                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding:  EdgeInsets.only(right: 25.w,left: 31.w,top: 12.h),
              child: Row(
                children: [
                  Container(

                    width: 180.w,
                    child: MaterialButton(
                      minWidth: 200.w,
                      color: Helper.getColorFromHex("#EE7E1B"),
                      onPressed: (){},
                      child: Row(
                        children: [
                          Image.asset("assets/images/whatsapp.png",
                          width: 18.w,
                            height: 18.h,
                          ),
                          SizedBox(width: 27.24.w,),
                          Text("WhatsApp"
                          ,style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 20.sp,

                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding:  EdgeInsets.only(right: 25.w,left: 31.w,top: 12.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(

                    width: 150.w,
                    child: MaterialButton(
                      minWidth: 200.w,
                      color: Helper.getColorFromHex("#EE7E1B"),
                      onPressed: (){},
                      child: Text("Confirmer",

                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 20.sp,

                        ),
                      ),
                    ),
                  ),
                  Container(

                    width: 150.w,
                    child: MaterialButton(
                      minWidth: 200.w,
                      color: Helper.getColorFromHex("#EE7E1B"),
                      onPressed: (){},
                      child: Text("Annuler"
                        ,style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 20.sp,

                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )

          ],
        ),
      ),
    );
  }
}
