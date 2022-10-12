import 'package:delivery_food/constante.dart';
import 'package:delivery_food/helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tuple/tuple.dart';
import '../controllers/change_etat_controller.dart';

class ChangeEtatView extends GetView<ChangeEtatController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                       EdgeInsets.only(
                         left: 83.w,
                         right: 83.w,
                         top: 60.h,
                       ),
                       child: MaterialButton(
                         minWidth: 206.w,
                         height: 53.06.h,
                         color: Helper.getColorFromHex("#24FF00"),
                         onPressed: (){},
                         child: Text("Livré",
                                   style: TextStyle(
                                     fontSize:14.sp ,
                                     fontWeight: FontWeight.w700,
                                   ),
                         ),
                       ),
                     ),
                     Padding(
                       padding:
                       EdgeInsets.only(
                         left: 83.w,
                         right: 83.w,
                         top: 23.h,
                       ),
                       child: MaterialButton(
                         minWidth: 206.w,
                         height: 53.06.h,
                         color: Helper.getColorFromHex("#FF0000"),
                         onPressed: (){},
                         child: Text("Reporté",
                                   style: TextStyle(
                                     fontSize:14.sp ,
                                     fontWeight: FontWeight.w700,
                                   ),
                         ),
                       ),
                     ),
                     Padding(
                       padding:
                       EdgeInsets.only(
                         left: 83.w,
                         right: 83.w,
                         top: 23.h,
                       ),
                       child: MaterialButton(
                         minWidth: 206.w,
                         height: 53.06.h,
                         color: Helper.getColorFromHex("#E77A13"),
                         onPressed: (){},
                         child: Text("Annulé",
                                   style: TextStyle(
                                     fontSize:14.sp ,
                                     fontWeight: FontWeight.w700,
                                   ),
                         ),
                       ),
                     ),
                     Padding(
                       padding:
                       EdgeInsets.only(
                         left: 83.w,
                         right: 83.w,
                         top: 23.h,
                       ),
                       child: MaterialButton(
                         minWidth: 206.w,
                         height: 53.06.h,
                         color: Helper.getColorFromHex("#009EDD"),
                         onPressed: (){},
                         child: Text("Pas de réponse",
                                   style: TextStyle(
                                     fontSize:14.sp ,
                                     fontWeight: FontWeight.w700,
                                   ),
                         ),
                       ),
                     ),
                     Padding(
                       padding:
                       EdgeInsets.only(
                         left: 83.w,
                         right: 83.w,
                         top: 23.h,
                       ),
                       child: MaterialButton(
                         minWidth: 206.w,
                         height: 53.06.h,
                         color: Helper.getColorFromHex("#FF8B1D"),
                         onPressed: (){},
                         child: Text("Refusé",
                                   style: TextStyle(
                                     fontSize:14.sp ,
                                     fontWeight: FontWeight.w700,
                                   ),
                         ),
                       ),
                     ),
                     Padding(
                       padding:
                       EdgeInsets.only(
                         left: 83.w,
                         right: 83.w,
                         top: 23.h,
                       ),
                       child: MaterialButton(
                         minWidth: 206.w,
                         height: 53.06.h,
                         color: Helper.getColorFromHex("#FAFF00"),
                         onPressed: (){},
                         child: Text("Injoignable",
                                   style: TextStyle(
                                     fontSize:14.sp ,
                                     fontWeight: FontWeight.w700,
                                   ),
                         ),
                       ),
                     ),
                     Padding(
                       padding:
                       EdgeInsets.only(
                         left: 83.w,
                         right: 83.w,
                         top: 23.h,
                       ),
                       child: MaterialButton(
                         minWidth: 206.w,
                         height: 53.06.h,
                         color: Helper.getColorFromHex("#00B6FF0"),
                         onPressed: (){},
                         child: Text("Hors zone",
                                   style: TextStyle(
                                     fontSize:14.sp ,
                                     fontWeight: FontWeight.w700,
                                   ),
                         ),
                       ),
                     ),

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
List<Tuple2> tuples = [
  Tuple2(Icons.directions_bike, StepState.indexed, ),
  Tuple2(Icons.directions_bus, StepState.editing, ),
  Tuple2(Icons.directions_railway, StepState.complete, ),
  Tuple2(Icons.directions_boat, StepState.disabled, ),
  Tuple2(Icons.directions_car, StepState.error, ),
];
