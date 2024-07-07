import 'package:flutter/material.dart';
import 'package:flutter_cook_book/presentations/widget_common/base_screen.dart';

class DemoFutureWithUI extends StatelessWidget {
  const DemoFutureWithUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      titleScreen: 'Demo FutureBuilder',
      bodyScreen: Column(
        children: [
          ElevatedButton(
            onPressed: () {},
            child: Container(
              width: 80,
              height: 80,
              color: Colors.red,
            ),
          ),
          FutureBuilder<String>(
            future: delayed(3),
            builder: (context, snapshot) {
              final dataSnapshot = snapshot.data;
              final dataSnapshot2 = snapshot.connectionState;
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const CircularProgressIndicator();
              } else {
                if (snapshot.hasData) {
                  return Text("Success: $dataSnapshot");
                } else {
                  return Text("Error: $dataSnapshot");
                }
              }
            },
          ),
        ],
      ),
    );
  }

  Future<String> delayed(int second) async {
    await Future.delayed(Duration(seconds: second));
    throw ('2');
    return second.toString();
  }
}

/// BTVN
// 1.ASYNC, AWAIT, THEN, CATCH ERROR, ON ERROR
// 2.Chép lại code
// 3.Tạo một màn hình có một widget là ảnh mới đầu sẽ là icon ? sau 3 s
// -> hiển thị ảnh bất kì
// -> dùng image.local || image.network
