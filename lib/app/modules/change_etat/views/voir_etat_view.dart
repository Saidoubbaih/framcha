import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../../../../constante.dart';
import '../../../../helper.dart';

class VoirEtatView extends GetView {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
          backgroundColor: Colors.grey,


          body: Padding(
            padding:  EdgeInsets.only(bottom: 32.h,top: 32.h,left: 26.w,right: 26.h),
            child: Container(
              decoration: BoxDecoration(
                  color: bacgroundColor,
                  borderRadius: BorderRadius.all(Radius.circular(10.r))
              ),

              width: double.infinity,
              height: double.infinity,
              child: SingleChildScrollView(
                child: Stack(
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding:
                          EdgeInsets.only(top: 14.22.h,left: 20.w),
                          child: Row(
                            children: [
                              Text("CMD :",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15.5.sp
                                ),
                              ),
                              Text(" C-221212-782",
                                style: TextStyle(
                                    fontSize: 15.sp
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding:
                          EdgeInsets.only(top: 9.14.h,left: 20.w),
                          child: Row(
                            children: [
                              Text("Tél :",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15.5.sp
                                ),
                              ),
                              Text(" 06 55 77 88 99",
                                style: TextStyle(
                                    fontSize: 15.sp
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding:
                          EdgeInsets.only(top: 8.13.h,left: 20.w),
                          child: Row(
                            children: [
                              Text("V :",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15.5.sp
                                ),
                              ),
                              Text(" Fatima ",
                                style: TextStyle(
                                    fontSize: 15.sp
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding:
                          EdgeInsets.only(top:  8.13.h,left: 20.w),
                          child: Row(
                            children: [
                              Text("Adresse :",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15.5.sp
                                ),
                              ),
                              Text(" Hay anza",
                                style: TextStyle(
                                    fontSize: 15.sp
                                ),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding:
                              EdgeInsets.only(top: 8.13.h,left: 20.w),
                              child: Row(
                                children: [
                                  Text("Etat :",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15.5.sp
                                    ),
                                  ),
                                  Text(" En cours",
                                    style: TextStyle(
                                        fontSize: 15.sp
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                              EdgeInsets.only(
                                  right: 48.41.w,
                                  top: 8.13.h,left: 27.w),
                              child: Row(
                                children: [
                                  Text("Prix:",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15.5.sp
                                    ),
                                  ),
                                  Text(" 23543DH",
                                    style: TextStyle(
                                        fontSize: 15.sp
                                    ),
                                  ),
                                ],
                              ),
                            ),

                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 20.w,top: 37.h,),
                          child: Row(
                            children: [
                              Text("Etat :",
                                style: TextStyle(
                                    color: Helper.getColorFromHex("#000000"),
                                    fontSize: 15.sp,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ],
                          ),
                        ),
                        //Circle
                        Padding(
                          padding: EdgeInsets.only(left: 45.w,top: 11.h,right: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [

                              CircleAvatar(
                                radius: 13.r,
                                backgroundColor: Helper.getColorFromHex("#3AA8D3"),

                              ),
                              Container(
                                  width: 60.w,
                                  child: Text("Ramassé", textAlign: TextAlign.start,
                                    style: TextStyle(
                                      color: Helper.getColorFromHex("#000000"),
                                      fontSize: 15.sp,

                                    ),)),
                              Text("2022-07-14 12:45",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  color: Helper.getColorFromHex("#000000"),
                                  fontSize: 12.sp,

                                ),),
                            ],
                          ),
                        ),
                        Padding(
                          padding:  EdgeInsets.only(left: 55.w),
                          child: Row(
                            children: [
                              Container(
                                color: Helper.getColorFromHex("#3AA8D3"),
                                width: 2.w,
                                height: 18.h,

                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 45.w,top: 0.h,right: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CircleAvatar(
                                radius: 13.r,
                                backgroundColor: Helper.getColorFromHex("#3AA8D3"),

                              ),
                              Container(
                                  width: 60.w,
                                  child: Text("Réception", textAlign: TextAlign.start,
                                    style: TextStyle(
                                      color: Helper.getColorFromHex("#000000"),
                                      fontSize: 15.sp,

                                    ),)),
                              Text("2022-07-14 12:45",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  color: Helper.getColorFromHex("#000000"),
                                  fontSize: 12.sp,

                                ),),
                            ],
                          ),
                        ),
                        Padding(
                          padding:  EdgeInsets.only(left: 55.w),
                          child: Row(
                            children: [
                              Container(
                                color: Helper.getColorFromHex("#3AA8D3"),
                                width: 2.w,
                                height: 18.h,

                              ),
                            ],
                          ),
                        ),

                        Padding(
                          padding: EdgeInsets.only(left: 45.w,right: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CircleAvatar(
                                radius: 13.r,
                                backgroundColor: Helper.getColorFromHex("#3AA8D3"),

                              ),
                              Container(
                                  width: 60.w,
                                  child: Text("En cours ", textAlign: TextAlign.start,
                                    style: TextStyle(
                                      color: Helper.getColorFromHex("#000000"),
                                      fontSize: 15.sp,

                                    ),)),
                              Text("2022-07-14 12:45",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  color: Helper.getColorFromHex("#000000"),
                                  fontSize: 12.sp,

                                ),),
                            ],
                          ),
                        ),
                        Padding(
                          padding:  EdgeInsets.only(left: 55.w),
                          child: Row(
                            children: [
                              Container(
                                color: Helper.getColorFromHex("#3AA8D3"),
                                width: 2.w,
                                height: 18.h,

                              ),
                            ],
                          ),
                        ),


                        Padding(
                          padding: EdgeInsets.only(left: 45.w,right: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CircleAvatar(
                                radius: 13.r,
                                backgroundColor: Helper.getColorFromHex("#3AA8D3"),

                              ),
                              Container(
                                  width: 60.w,
                                  child: Text("PDR1", textAlign: TextAlign.start,
                                    style: TextStyle(
                                      color: Helper.getColorFromHex("#000000"),
                                      fontSize: 15.sp,

                                    ),)),
                              Text("2022-07-14 12:45",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  color: Helper.getColorFromHex("#000000"),
                                  fontSize: 12.sp,

                                ),),
                            ],
                          ),
                        ),
                        Padding(
                          padding:  EdgeInsets.only(left: 55.w),
                          child: Row(
                            children: [
                              Container(
                                color: Helper.getColorFromHex("#3AA8D3"),
                                width: 2.w,
                                height: 18.h,

                              ),
                            ],
                          ),
                        ),

                        Padding(
                          padding: EdgeInsets.only(left: 45.w,right: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CircleAvatar(
                                radius: 13.r,
                                backgroundColor: Helper.getColorFromHex("#3AA8D3"),

                              ),
                              Container(
                                  width: 60.w,
                                  child: Text("PDR2", textAlign: TextAlign.start,
                                    style: TextStyle(
                                      color: Helper.getColorFromHex("#000000"),
                                      fontSize: 15.sp,

                                    ),)),
                              Text("2022-07-14 12:45",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  color: Helper.getColorFromHex("#000000"),
                                  fontSize: 12.sp,

                                ),),

                            ],
                          ),
                        ),
                        Padding(
                          padding:  EdgeInsets.only(left: 55.w),
                          child: Row(
                            children: [
                              Container(
                                color: Helper.getColorFromHex("#3AA8D3"),
                                width: 2.w,
                                height: 18.h,

                              ),
                            ],
                          ),
                        ),

                        Padding(
                          padding: EdgeInsets.only(left: 45.w,right: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CircleAvatar(
                                radius: 13.r,
                                backgroundColor: Helper.getColorFromHex("#3AA8D3"),

                              ),
                              Container(
                                width: 60.w,
                                child: Text("Livré ",
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    color: Helper.getColorFromHex("#000000"),
                                    fontSize: 15.sp,

                                  ),
                                ),
                              ),
                              Text("2022-07-14 12:45",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  color: Helper.getColorFromHex("#000000"),
                                  fontSize: 12.sp,

                                ),),

                            ],
                          ),
                        ),
                        Padding(
                          padding:  EdgeInsets.only(top:31.h ,left: 20.w,),
                          child: Row(
                            children: [
                              Text("Changé l’état :" ,
                                style: TextStyle(
                                    fontSize:15.sp,
                                    fontWeight: FontWeight.bold,
                                    color: Helper.getColorFromHex("#000000")
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 12.w,top:14.h ,right: 12.w),
                          child: MaterialButton(
                            color: Helper.getColorFromHex("#E77A13"),
                            minWidth: 353.w,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4.0.r),
                            ),
                            onPressed: () {},
                            child: Text("Livré",
                              style: TextStyle(
                                fontSize: 14.sp,
                                color: Helper.getColorFromHex("#FFFFFF"),

                              ),
                            ),

                          ),

                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 12.w,top: 0.h , right: 12.w),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              MaterialButton(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4.0.r),
                                ),
                                color:Helper.getColorFromHex("#E77A13"),
                                onPressed:(){},
                                child: Text("Refusé" ,
                                  style: TextStyle(
                                    color: Helper.getColorFromHex("#FFFFFF"),
                                    fontSize: 14.sp,
                                  ),),
                                minWidth: 80.w,
                              ),
                              MaterialButton(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4.0.r),
                                ),
                                color:Helper.getColorFromHex("#E77A13"),
                                onPressed:(){},
                                child: Text("injoignable" ,
                                  style: TextStyle(
                                    color: Helper.getColorFromHex("#FFFFFF"),
                                    fontSize: 14.sp,
                                  ),),
                                minWidth: 80.w,
                              ),
                              MaterialButton(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4.0.r),
                                ),
                                color:Helper.getColorFromHex("#E77A13"),
                                onPressed:(){},
                                child: Text("PDR" ,
                                  style: TextStyle(
                                    color: Helper.getColorFromHex("#FFFFFF"),
                                    fontSize: 14.sp,
                                  ),),
                                minWidth: 80.w,
                              ),
                            ],),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 12.w,top: 0.h , right: 12.w),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              MaterialButton(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4.0.r),
                                ),
                                color:Helper.getColorFromHex("#E77A13"),
                                onPressed:(){},
                                child: Text("Refusé" ,
                                  style: TextStyle(
                                    color: Helper.getColorFromHex("#FFFFFF"),
                                    fontSize: 14.sp,
                                  ),),
                                minWidth: 80.w,
                              ),
                              MaterialButton(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4.0.r),
                                ),
                                color:Helper.getColorFromHex("#E77A13"),
                                onPressed:(){},
                                child: Text("injoignable" ,
                                  style: TextStyle(
                                    color: Helper.getColorFromHex("#FFFFFF"),
                                    fontSize: 14.sp,
                                  ),),
                                minWidth: 80.w,
                              ),
                              MaterialButton(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4.0.r),
                                ),
                                color:Helper.getColorFromHex("#E77A13"),
                                onPressed:(){},
                                child: Text("PDR" ,
                                  style: TextStyle(
                                    color: Helper.getColorFromHex("#FFFFFF"),
                                    fontSize: 14.sp,
                                  ),),
                                minWidth: 80.w,
                              ),
                            ],),
                        ),

                        Padding(
                          padding:  EdgeInsets.only(left: 20.w,top: 14.h),
                          child: Row(
                            children: [
                              Text("Cordonnées client :",
                                style: TextStyle(
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,

                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding:  EdgeInsets.only(left: 5.w , right: 5.w),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              MaterialButton(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4.0.r),
                                ),
                                color: Helper.getColorFromHex("#009EDD"),
                                onPressed: (){},
                                child: Row(
                                  children: [
                                    Icon(Icons.phone),
                                    SizedBox(width: 0.w,),
                                    Text("Appeler Client    ",
                                      style: TextStyle(
                                        fontSize:10.sp,
                                        color: Helper.getColorFromHex("#000000"),

                                      ),
                                    ),
                                  ],
                                ),
                                minWidth:120.w ,
                              ),
                              MaterialButton(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4.0.r),
                                ),
                                color: Helper.getColorFromHex("#009EDD"),
                                onPressed: (){},
                                child: Row(
                                  children: [
                                    Icon(Icons.phone),
                                    SizedBox(width: 0.w,),
                                    Text("WhatsApp Client     ",
                                      style: TextStyle(
                                        fontSize:10.sp,
                                        color: Helper.getColorFromHex("#000000"),

                                      ),
                                    ),
                                  ],
                                ),
                                minWidth:120.w ,
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding:  EdgeInsets.only(left: 20.w,top: 14.h),
                          child: Row(
                            children: [
                              Text("Cordonnées Vendeur :",
                                style: TextStyle(
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,

                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding:  EdgeInsets.only(left: 5.w , right: 5.w),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              MaterialButton(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4.0.r),
                                ),
                                color: Helper.getColorFromHex("#009EDD"),
                                onPressed: (){},
                                child: Row(
                                  children: [
                                    Icon(Icons.phone),
                                    SizedBox(width: 0.w,),
                                    Text("Appeler Vendeur",
                                      style: TextStyle(
                                        fontSize:10.sp,
                                        color: Helper.getColorFromHex("#000000"),

                                      ),
                                    ),
                                  ],
                                ),
                                minWidth:115.w ,
                              ),
                              MaterialButton(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4.0.r),
                                ),
                                color: Helper.getColorFromHex("#009EDD"),
                                onPressed: (){},
                                child: Row(
                                  children: [
                                    Icon(Icons.phone),
                                    SizedBox(width: 0.w,),
                                    Text("WhatsApp Vendeur",
                                      style: TextStyle(
                                        fontSize:10.sp,
                                        color: Helper.getColorFromHex("#000000"),
                                      ),
                                    ),
                                  ],
                                ),
                                minWidth:115.w ,
                              ),
                            ],
                          ),
                        ),

                        Padding(
                            padding: EdgeInsets.only(top: 19.h,left: 12.w,bottom: 12.h,right: 12.w),
                            child:Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      color:Helper.getColorFromHex("#24FF00") ,
                                      borderRadius: BorderRadius.all(Radius.circular(4))
                                  ),
                                  height: 38.h,
                                  width: 91.w,
                                  child: Center(
                                    child: Text("Livré",
                                      textAlign: TextAlign.center,

                                      style: TextStyle(
                                          fontSize: 16.sp,
                                          color: Colors.white
                                      ),

                                    ),
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      color:Helper.getColorFromHex("#EEF223") ,
                                      borderRadius: BorderRadius.all(Radius.circular(4))
                                  ),
                                  width: 91.w,
                                  height: 38.h,
                                  child: Text("PDR & Injoignable",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 16.sp,
                                        color: Colors.white
                                    ),
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      color:Helper.getColorFromHex("#FF0000") ,
                                      borderRadius: BorderRadius.all(Radius.circular(4))
                                  ),
                                  width: 91.w,
                                  height: 38.h,
                                  child: Center(
                                    child: Text("Annulé & Refusé",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 16.sp,
                                          color: Colors.white
                                      ),

                                    ),
                                  ),
                                ),

                              ],
                            )


                        )

                      ],
                    ),
                    Positioned(
                        top: 2.h,
                        right: 5.w,
                        child: GestureDetector(
                          onTap:() =>Get.back(),
                          child: CircleAvatar(
                            radius: 15.r,
                            backgroundColor: Colors.black,
                            child:Icon(Icons.clear),
                          ),
                        ))
                  ],
                ),
              ),
            ),
          )

    );
  }
}
