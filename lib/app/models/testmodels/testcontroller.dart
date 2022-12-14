import 'package:delivery_food/app/models/testmodels/testserive.dart';
import 'package:get/get.dart';

class ProductController extends GetxController {
    var isLoading = true.obs;

  var productList = [].obs;

  @override
  void onInit() {
    fetchProducts();
    super.onInit();
  }

  void fetchProducts() async {
    try {
      isLoading(true);
      var products = await CountryService.fetchProducts();
      if (products != null) {
        productList.value = products;
      }
    } finally {
      isLoading(false);
    }
  }
}
