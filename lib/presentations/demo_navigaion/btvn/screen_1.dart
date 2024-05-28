import 'package:flutter/material.dart';
import 'package:flutter_cook_book/presentations/demo_navigaion/btvn/screen_2.dart';

class Screen1 extends StatelessWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        title: Text(
          'BTVN SCREEN 1',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ),
      body: TextButton(
        onPressed: () {
          Route routeToScreen2 = MaterialPageRoute(
            builder: (context) => const Screen2(
              argumentFromScreen1: '56',
            ),
          );
          Navigator.push(
            context,
            routeToScreen2,
          );
        },
        child: Text(
          'Click me',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ),
    );
  }
}
