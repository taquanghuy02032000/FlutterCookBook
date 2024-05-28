import 'package:flutter/material.dart';
import 'package:flutter_cook_book/presentations/demo_navigaion/btvn/screen_1.dart';

class Screen3 extends StatelessWidget {
  const Screen3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        title: Text(
          'BTVN SCREEN 3',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ),
      body: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: TextButton(
                onPressed: () {
                  Route routeToScreen1 = MaterialPageRoute(
                    builder: (context) => const Screen1(),
                  );
                  Navigator.push(
                    context,
                    routeToScreen1,
                  );
                },
                child: Container(
                  color: Colors.green,
                  child: Text(
                    'Push another screen 1',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute<dynamic>(
                      builder: (BuildContext context) => const Screen1(),
                    ),
                    (route) => false, //if you want to disable back feature set to false
                  );
                },
                child: Container(
                  color: Colors.green,
                  child: Text(
                    'Push to screen1 and delete previous screens ',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
