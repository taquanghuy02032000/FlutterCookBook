import 'package:flutter/material.dart';
import 'package:flutter_cook_book/presentations/demo_stateless_feat_statefull/demo_statefull_example.dart';

class DemoStateLessScreen extends StatelessWidget {
  const DemoStateLessScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("stateless built");

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: Text(
          'Demo StateLess',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ),
      body: Container(
        color: Colors.white,
        child: Center(
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const DemoStateFullExampleScreen(),
                ),
              );
            },
            // onLongPress: () {
            //   print('longPress');
            // },
            // onDoubleTap: () {
            //   print('onDoubleTap');
            // },
            child: Text(
              "My name",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
        ),
      ),
    );
  }
}
