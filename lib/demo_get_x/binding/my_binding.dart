import 'package:flutter_cook_book/demo_get_x/binding/binding_controller.dart';
import 'package:get/get.dart';

class MyBinding implements Bindings {
  @override
  void dependencies() {
    // Get.lazyPut(() => DemoBindingController());
    Get.put(() => DemoBindingController());
  }
}
