import 'package:flutter/material.dart';
import 'package:flutter_cook_book/presentations/demo_navigaion/screen_d.dart';

class ScreenC extends StatelessWidget {
  const ScreenC({Key? key, required this.inputFromBScreen}) : super(key: key);
  final String inputFromBScreen;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: TextButton(
        onPressed: () {
          // Route routeToScreenC = MaterialPageRoute(
          //   builder: (context) => const ScreenD(),
          // );
          // Navigator.push(
          //   context,
          //   routeToScreenC,
          // );

          ///Use for backScreen
          Navigator.of(context).pop("okok");
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
      // appBar: AppBar(
      //   title: const Text('Screen C App Bar'),
      //   backgroundColor: Colors.lightBlue,
      // ),
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
                'Screen C content',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const SizedBox(
                height: 12,
              ),
              Text(
                'input from Screen B is $inputFromBScreen',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
