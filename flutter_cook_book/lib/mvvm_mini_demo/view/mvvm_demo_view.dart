import 'package:flutter/material.dart';
import 'package:flutter_cook_book/presentations/widget_common/base_screen.dart';

class DemoMVVMView extends StatefulWidget {
  const DemoMVVMView({Key? key}) : super(key: key);

  @override
  State<DemoMVVMView> createState() => _DemoMVVMViewState();
}

class _DemoMVVMViewState extends State<DemoMVVMView> {
  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      titleScreen: 'Demo MVVM mini project',
      bodyScreen: Container(),
    );
  }
}
