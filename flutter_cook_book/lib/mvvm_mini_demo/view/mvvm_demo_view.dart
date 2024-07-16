import 'package:flutter/material.dart';
import 'package:flutter_cook_book/mvvm_mini_demo/model/mvvm_demo_model.dart';
import 'package:flutter_cook_book/mvvm_mini_demo/view_model/mvvm_demo_view_model.dart';
import 'package:flutter_cook_book/presentations/widget_common/base_screen.dart';

class DemoMVVMView extends StatefulWidget {
  const DemoMVVMView({Key? key}) : super(key: key);

  @override
  State<DemoMVVMView> createState() => _DemoMVVMViewState();
}

class _DemoMVVMViewState extends State<DemoMVVMView> {
  late MVVMDemoViewModel _viewModel;

  @override
  void initState() {
    super.initState();
    _viewModel = MVVMDemoViewModel();
  }

  @override
  void dispose() {
    super.dispose();
    _viewModel.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      titleScreen: 'Demo MVVM mini project',
      bodyScreen: Column(
        children: [
          ///Streambuilder -> loading -> success -> error
          StreamBuilder<Map<String, dynamic>>(
              stream: _viewModel.humanTotalStream.stream,
              builder: (context, snapshot) {
                final Map<String, dynamic> data = snapshot.data ?? {};
                if (data['isLoading']) {
                  return CircularProgressIndicator();
                } else {
                  if (data['data'] != null) {
                    final human = data['data'] as List<HumanModel>;
                    return Text('Tổng số người hiện tại ở hệ thống là ${human.length}');
                  } else {
                    return Text('Lỗi hệ thống');
                  }
                }
              }),
          ElevatedButton(
            onPressed: () {
              //call get data user
              _viewModel.getInfoUsers();
            },
            child: const Text('Get Info'),
          )
        ],
      ),
    );
  }
}
