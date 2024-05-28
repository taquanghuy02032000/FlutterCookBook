import 'package:flutter/material.dart';
import 'package:flutter_cook_book/presentations/demo_navigaion/screen_c.dart';

import 'package:flutter_cook_book/resources/image_app.dart';

class ScreenB extends StatelessWidget {
  const ScreenB({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: TextButton(
        onPressed: () async {
          ///Push screen normal feat send data
          ///Way 1
          // Route routeToScreenC = MaterialPageRoute(
          //   builder: (context) => const ScreenC(
          //     inputFromBScreen: 'result ne 1',
          //   ),
          // );
          //
          // Navigator.push(
          //   context,
          //   routeToScreenC,
          // );

          ///Way2
          // Navigator.pushNamed(context, '/c');

          ///Get data from pop screen
          final result = await Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const ScreenC(
                inputFromBScreen: 'result ne 1',
              ),
            ),
          );
          ScaffoldMessenger.of(context)
            ..removeCurrentSnackBar()
            ..showSnackBar(SnackBar(content: Text('$result')));
        },
        child: Container(
          width: 70,
          height: 80,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.black,
          ),
          child: const Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
      ),
      appBar: AppBar(
        title: const Text('Screen B App Bar'),
        backgroundColor: Colors.lightBlue,
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 16,
          ),
          color: Colors.teal,
          child: Column(
            children: [
              Text(
                'Screen B content',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              SizedBox(
                height: 12,
              ),
              Image.network('https://picsum.photos/250?image=9'),
              // Image.asset(
              //   ImageApp.imageCar,
              //   height: 50,
              //   width: 50,
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
