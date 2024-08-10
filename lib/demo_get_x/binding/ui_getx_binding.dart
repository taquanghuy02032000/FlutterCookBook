import 'package:flutter/material.dart';
import 'package:flutter_cook_book/demo_get_x/binding/binding_controller.dart';
import 'package:flutter_cook_book/presentations/widget_common/base_screen.dart';
import 'package:get/get.dart';

class UIBindingDemoScreen extends StatelessWidget {
  const UIBindingDemoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      titleScreen: 'Demo GetX',
      bodyScreen: Container(
        child: Text('${Get.find<DemoBindingController>().currentValue}'),
      ),
    );
  }
}
