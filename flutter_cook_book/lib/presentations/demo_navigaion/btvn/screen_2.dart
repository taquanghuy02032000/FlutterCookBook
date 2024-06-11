import 'package:flutter/material.dart';
import 'package:flutter_cook_book/presentations/demo_navigaion/btvn/screen_3.dart';

class Screen2 extends StatelessWidget {
  const Screen2({
    Key? key,
    required this.argumentFromScreen1,
  }) : super(key: key);
  final String argumentFromScreen1;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.teal,
        appBar: AppBar(
          title: Column(
            children: [
              Text(
                'BTVN SCREEN 2',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const TabBar(
                tabs: [
                  Tab(icon: Icon(Icons.directions_car)),
                  Tab(icon: Icon(Icons.directions_transit)),
                ],
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            ///Tab1
            Container(
              color: Colors.lightBlue,
              child: Text(
                'result from screen 1: ${argumentFromScreen1}',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.red),
              ),
            ),

            ///Tab2
            Container(
              color: Colors.white,
              child: Center(
                child: TextButton(
                  child: const Text(
                    "click to screen 3",
                  ),
                  onPressed: () {
                    Route routeToScreen3 = MaterialPageRoute(
                      builder: (context) => const Screen3(),
                    );
                    Navigator.push(
                      context,
                      routeToScreen3,
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
