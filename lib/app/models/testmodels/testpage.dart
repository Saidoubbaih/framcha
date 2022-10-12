import 'package:delivery_food/app/models/testmodels/testcontroller.dart';
import 'package:delivery_food/helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'country.dart';

class HomePage extends StatelessWidget {
  final ProductController productController = Get.put(ProductController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: Icon(
          Icons.arrow_back_ios,
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.shopping_cart,
            ),
            onPressed: () {},
          )
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        'ShopX',
                        style: TextStyle(
                            fontFamily: 'avenir',
                            fontSize: 32,
                            fontWeight: FontWeight.w900),
                      ),
                    ),
                    IconButton(
                        icon: Icon(Icons.view_list_rounded), onPressed: () {}),
                    IconButton(icon: Icon(Icons.grid_view), onPressed: () {}),
                  ],
                ),
              ),
              Container(
                child: Obx(
                  () {
                    if (productController.isLoading.value)
                      return Center(child: CircularProgressIndicator());
                    else
                      return ListView.builder(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemCount:productController.productList.length,
                          itemBuilder: (context, i) => Padding(
                              padding: EdgeInsets.only(
                                  right: 25.w, left: 25.w, top: 31.h),
                              child: ProductTile(productController.productList[i])));
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ProductTile extends StatelessWidget {
  final Product product;
  const ProductTile(this.product);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shadowColor: Helper.getColorFromHex("#000000"),
      shape:
          RoundedRectangleBorder(borderRadius: new BorderRadius.circular(8.r)),
      child: Container(
        width: double.infinity,
        height: 218.41.h,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 14.22.h, left: 27.w),
              child: Row(
                children: [
                  Text(
                    "name :",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 15.5.sp),
                  ),
                  Text(
                    //"jjuj",
                    product.name.toString(),
                    style: TextStyle(fontSize: 15.sp),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 9.14.h, left: 27.w),
              child: Row(
                children: [
                  Text(
                    "localbname :",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 15.5.sp),
                  ),
                  Text(
                  //  "jjuj",
                    product.productType.toString(),
                    style: TextStyle(fontSize: 15.sp),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 8.13.h, left: 27.w),
              child: Row(
                children: [
                  Text(
                    "date :",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 15.5.sp),
                  ),
                  Text(
                    "jjuj",
                    //product.price,
                    style: TextStyle(fontSize: 15.sp),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 8.13.h, left: 27.w),
              child: Row(
                children: [
                  Text(
                    "globale :",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 15.5.sp),
                  ),
                  Text(
                    //"jjuj",
                      '${product.id}'.toString(),
                    style: TextStyle(fontSize: 15.sp),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 8.13.h, left: 27.w),
                  child: Row(
                    children: [
                      Text(
                        "yeaert :",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15.5.sp),
                      ),
                      Text(
                        //"jjuj",
                        product.category.toString(),
                        style: TextStyle(fontSize: 15.sp),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.only(right: 48.41.w, top: 8.13.h, left: 27.w),
                  child: Row(
                    children: [
                      Text(
                        "fixed:",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15.5.sp),
                      ),
                      Text(
                        //"jjuj",
                        '${product.createdAt}',
                        style: TextStyle(fontSize: 15.sp),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: 24.38.w, right: 24.38.w),
              child: Padding(
                padding: EdgeInsets.only(top: 29.49.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MaterialButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4.0.r),
                      ),
                      minWidth: 122.38.w,
                      onPressed: () {
                        //Get.to(VoirEtatView());
                      },
                      child: Text(
                        "Voir",
                        style: TextStyle(
                          color: Helper.getColorFromHex("#FFFFFF"),
                          fontSize: 15.sp,
                        ),
                      ),
                      color: Helper.getColorFromHex("#00B6FF"),
                    ),
                    MaterialButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4.0.r),
                      ),
                      minWidth: 122.38.w,
                      onPressed: () {
                        // Get.to(ChangeEtatView());
                      },
                      child: Text(
                        "Changé l’état",
                        style: TextStyle(
                          color: Helper.getColorFromHex("#FFFFFF"),
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
    );
  }
}

/*import 'package:delivery_food/app/models/testmodels/testcontroller.dart';
import 'package:delivery_food/constante.dart';
import 'package:delivery_food/helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class Countrypage extends StatelessWidget {
  Countrypage({super.key});

  CountryController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 40.h,
        leadingWidth: 45.w,
        backgroundColor: Colors.amber,
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
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 150,
              ),
              Container(
                color: Colors.white,
                height: 80,
                width: 200,
                child: Text("dd"),
              ),
              SizedBox(
                height: 150,
              ),
              Container(
                child: Obx(
                  () {
                    if (controller.isLoading.value) {
                      return Center(child: CircularProgressIndicator());
                    } else {
                      return ListView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: controller.productList.length,
                        itemBuilder: (context, i) => Padding(
                          padding: EdgeInsets.only(
                              right: 25.w, left: 25.w, top: 31.h),
                          child: Card(
                            elevation: 2,
                            shadowColor: Helper.getColorFromHex("#000000"),
                            shape: RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(8.r)),
                            child: Container(
                              width: double.infinity,
                              height: 218.41.h,
                              child: Column(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                        top: 14.22.h, left: 27.w),
                                    child: Row(
                                      children: [
                                        Text(
                                          "name :",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15.5.sp),
                                        ),
                                        Text(
                                          // "jjuj",
                                          controller.productList[i].name,
                                          style: TextStyle(fontSize: 15.sp),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        top: 9.14.h, left: 27.w),
                                    child: Row(
                                      children: [
                                        Text(
                                          "localbname :",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15.5.sp),
                                        ),
                                        Text(
                                          //"jjuj",
                                          controller.productList[i].productType,
                                          style: TextStyle(fontSize: 15.sp),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        top: 8.13.h, left: 27.w),
                                    child: Row(
                                      children: [
                                        Text(
                                          "date :",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15.5.sp),
                                        ),
                                        Text(
                                          //"jjuj",
                                          controller.productList[i].price,
                                          style: TextStyle(fontSize: 15.sp),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        top: 8.13.h, left: 27.w),
                                    child: Row(
                                      children: [
                                        Text(
                                          "globale :",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15.5.sp),
                                        ),
                                        Text(
                                          //"jjuj",
                                          '${controller.productList[i].id}'
                                              .toString(),
                                          style: TextStyle(fontSize: 15.sp),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                            top: 8.13.h, left: 27.w),
                                        child: Row(
                                          children: [
                                            Text(
                                              "yeaert :",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 15.5.sp),
                                            ),
                                            Text(
                                              //"jjuj",
                                              controller.productList[i].category
                                                  .toString(),
                                              style: TextStyle(fontSize: 15.sp),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                            right: 48.41.w,
                                            top: 8.13.h,
                                            left: 27.w),
                                        child: Row(
                                          children: [
                                            Text(
                                              "fixed:",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 15.5.sp),
                                            ),
                                            Text(
                                              //"jjuj",
                                              '${controller.productList[i].createdAt}',
                                              style: TextStyle(fontSize: 15.sp),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left: 24.38.w, right: 24.38.w),
                                    child: Padding(
                                      padding: EdgeInsets.only(top: 29.49.h),
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
                                              //Get.to(VoirEtatView());
                                            },
                                            child: Text(
                                              "Voir",
                                              style: TextStyle(
                                                color: Helper.getColorFromHex(
                                                    "#FFFFFF"),
                                                fontSize: 15.sp,
                                              ),
                                            ),
                                            color: Helper.getColorFromHex(
                                                "#00B6FF"),
                                          ),
                                          MaterialButton(
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(4.0.r),
                                            ),
                                            minWidth: 122.38.w,
                                            onPressed: () {
                                              // Get.to(ChangeEtatView());
                                            },
                                            child: Text(
                                              "Changé l’état",
                                              style: TextStyle(
                                                color: Helper.getColorFromHex(
                                                    "#FFFFFF"),
                                                fontSize: 15.sp,
                                              ),
                                            ),
                                            color: Helper.getColorFromHex(
                                                "#E77A13"),
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
                      );
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}*/
