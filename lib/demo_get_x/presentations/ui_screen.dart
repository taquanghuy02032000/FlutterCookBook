import 'package:flutter/material.dart';
import 'package:flutter_cook_book/demo_get_x/presentations/get_x_demo_controler.dart';
import 'package:flutter_cook_book/presentations/widget_common/base_screen.dart';
import 'package:get/get.dart';

class UiGetXDemo extends GetView<GetXControllerDemo> {
  const UiGetXDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GetXControllerDemo _controller = Get.put(GetXControllerDemo());

    return BaseScreen(
      titleScreen: 'Demo GetX',
      bodyScreen: Column(
        children: [
          Obx(() => Text('${_controller.count}')),
          // TextShowValueCurrent(),
          SizedBox(
            height: 10,
          ),
          GetBuilder<GetXControllerDemo>(
            id: 'counterValue',
            // Sử dụng GetBuilder để tự động cập nhật UI khi giá trị count thay đổi
            builder: (_) => Text(
              '${_controller.value}',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ),
          ElevatedButton(
            onPressed: () {
              _controller.decrease();
            },
            child: Text('+'),
          ),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
            onPressed: () {
              _controller.increment();
            },
            child: Text('-'),
          ),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
            onPressed: () {
              _controller.updateValue();
            },
            child: Text('Demo get builder'),
          ),
          ElevatedButton(
            onPressed: () {
              Get.toNamed('home');
            },
            child: Text('Go'),
          ),
        ],
      ),
    );
  }
}

class TextShowValueCurrent extends StatelessWidget {
  const TextShowValueCurrent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() => Text("current value nao ${Get.find<GetXControllerDemo>()}"));
  }
}

/// Tạo luôn dự án gồm 3 màn hình
/// 1.Đăng nhập -> FirebaseAuth....
