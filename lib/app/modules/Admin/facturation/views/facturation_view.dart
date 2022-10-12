import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../../../helper.dart';
import '../controllers/facturation_controller.dart';

class FacturationView extends GetView<FacturationController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 40.h, leadingWidth: 45.w,
          //backgroundColor: bacgroundColor,
          title: Text(' Facturation ',
            style: TextStyle(
              color: Helper.getColorFromHex("#000000"),
              fontWeight: FontWeight.w300,
              fontSize: 18.01.sp,

            ),

          ),
          elevation: 1,
          centerTitle: true,
        ),
      body:SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding:  EdgeInsets.only(left: 25.w , top: 43.h),
              child: Row(
                children: [
                  Container(
                    width: 100.w,
                    height: 30.h,
                    child:
                    Text("Livreur :" ,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize:25.sp,
                        color: Helper.getColorFromHex("#000000"),
                      )
                      ,),
                  ),

                  Padding(
                    padding:  EdgeInsets.only(right:25.22.w),
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
                          child:
                          DropdownButton<String>(
                              icon:Icon(Icons.keyboard_arrow_down_sharp),
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
                              onChanged: (String? newValue) {

                              })),
                    ),
                  ),

                ],
              ),
            ),
            Padding(
              padding:  EdgeInsets.only(left: 25.w , top: 43.h),
              child: Row(
                children: [
                  Container(
                    width: 100.w,
                    height: 30.h,
                    child:
                    Text("Livreur :" ,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize:25.sp,
                        color: Helper.getColorFromHex("#000000"),
                      )
                      ,),
                  ),

                  Padding(
                    padding:  EdgeInsets.only(right:25.22.w),
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
                          child:
                           Center(
                               child:
                               Text('Verser', style: TextStyle(
                                  fontSize: 16.sp,
                                 color: Colors.black,
                                 fontWeight: FontWeight.w700

                               ),)))

                    ),
                  ),

                ],
              ),
            ),

            Padding(
              padding:  EdgeInsets.only(
                  right: 25.w,
                  left: 25.w ,
                  top: 31.h),
              child: ListView.builder(
                physics: ScrollPhysics(),
                shrinkWrap: true,
                itemCount: 2,
                itemBuilder: (context,i)=>

                  Column(
                    children: [
                      Card(
                        elevation: 2,
                        shadowColor: Helper.getColorFromHex("#000000"),
                        shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(8.r)),
                        child: Container(
                          width: double.infinity,
                          height: 350.h,
                          child: Column(
                            children: [
                              Padding(
                                padding:
                                EdgeInsets.only(top: 14.0.h,left: 27.w),
                                child: Row(
                                  children: [
                                    Text("BL :",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15.5.sp
                                      ),
                                    ),
                                    Text(" BL-221010-597",
                                      style: TextStyle(
                                          fontSize: 15.sp
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                EdgeInsets.only(top: 24.0.h,left: 27.w),
                                child: Row(
                                  children: [
                                    Text("Livreur :",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15.5.sp
                                      ),
                                    ),
                                    Text(" Mohamed ABDELTIF ",
                                      style: TextStyle(
                                          fontSize: 15.sp
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                EdgeInsets.only(top: 24.0.h,left: 27.w),
                                child: Row(
                                  children: [
                                    Text("Date de création  :",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15.5.sp
                                      ),
                                    ),
                                    Text(" 2022-12-12 14:14 ",
                                      style: TextStyle(
                                          fontSize: 15.sp
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                EdgeInsets.only(top: 24.0.h,left: 27.w),
                                child: Row(
                                  children: [
                                    Text("Date de règlement   :",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15.5.sp
                                      ),
                                    ),
                                    Text(" 2022-12-12 14:14",
                                      style: TextStyle(
                                          fontSize: 15.sp
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                EdgeInsets.only(top: 24.0.h,left: 27.w),
                                child: Row(
                                  children: [
                                    Text("Date de versement :",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15.5.sp
                                      ),
                                    ),
                                    Text(" 2022-12-12 14:14",
                                      style: TextStyle(
                                          fontSize: 15.sp
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                EdgeInsets.only(top: 24.0.h,left: 27.w),
                                child: Row(
                                  children: [
                                    Text("Montant :",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15.5.sp
                                      ),
                                    ),
                                    Text(" 15463 DHs",
                                      style: TextStyle(
                                          fontSize: 15.sp
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              Padding(
                                padding:
                                EdgeInsets.only(top: 24.0.h,left: 27.w , right: 15.w),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(children: [
                                      Text("Assigné :",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15.5.sp
                                        ),),
                                      Text("45" ,
                                        style: TextStyle(
                                            fontSize: 15.sp
                                        ),)
                                    ],),
                                    Row(children: [
                                      Text("Livré :", style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15.5.sp
                                      ),),Text("32", style: TextStyle(
                                          fontSize: 15.sp
                                      ),)
                                    ],),
                                    Row(children: [
                                      Text("Non Livré :", style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15.5.sp
                                      ),),Text("15", style: TextStyle(
                                          fontSize: 15.sp
                                      ),)
                                    ],)
                                  ],
                                ),
                              ),
                              Padding(
                                padding:  EdgeInsets.only(
                                    right: 20.w,
                                    left: 20.w ,
                                    top: 12.h),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    MaterialButton(
                                      minWidth: 100.w,
                                      height: 35.h,
                                      onPressed: (){},
                                      child: Text("Régler"),
                                      color:Helper.getColorFromHex("#00B6FF") ,
                                    ),

                                    MaterialButton(
                                      minWidth: 100.w,
                                      height: 35.h,
                                      onPressed: (){},
                                      child: Text("Verser"),
                                      color:Helper.getColorFromHex("#FE875D") ,
                                    ),
                                  ],
                                ),

                              ),


                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 10.h,)
                    ],
                  ),

              )
            ),



          ],
        ),
      )
    );
  }
}
