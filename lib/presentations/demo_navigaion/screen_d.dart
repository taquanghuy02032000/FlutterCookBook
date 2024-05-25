import 'package:flutter/material.dart';

class ScreenD extends StatelessWidget {
  const ScreenD({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen D App Bar'),
        backgroundColor: Colors.lightBlue,
      ),
      floatingActionButton: TextButton(
        onPressed: () {
          print('pressed1');
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
                'Screen D content',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
