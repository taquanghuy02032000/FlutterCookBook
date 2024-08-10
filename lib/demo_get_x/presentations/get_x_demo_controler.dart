import 'package:get/get.dart';

class GetXControllerDemo extends GetxController {
  String idWidgetProvince = 'province';

  @override
  void onInit() {
    super.onInit();
    print('onInit');
  }

  @override
  void onReady() {
    super.onReady();
    print('ready');
  }

  @override
  void onClose() {
    super.onClose();
    print('onClose');
  }

  ///OBX
  var count = 0.obs; //init value = 0

  increment() {
    count.value++;
    // count++;
  }

  decrease() {
    count--;
    // count.value--;
  }

  String value = 'SHOW';

  void updateValue() {
    if (value == 'SHOW') {
      value = 'HIDE';
    } else {
      value = 'SHOW';
    }

    count++;

    update(['counterValue']);
  }
}
