import 'package:flutter/material.dart';
import 'package:flutter_cook_book/presentations/widget_common/base_screen.dart';

class DemoBottomSheetScreen extends StatefulWidget {
  const DemoBottomSheetScreen({Key? key}) : super(key: key);

  @override
  State<DemoBottomSheetScreen> createState() => _DemoBottomSheetScreenState();
}

class _DemoBottomSheetScreenState extends State<DemoBottomSheetScreen> {
  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      titleScreen: 'Demo BottomSheet',
      bodyScreen: Container(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: Center(
          child: ElevatedButton(
            onPressed: () {
              showModalBottomSheet(
                isScrollControlled: true,
                context: context,
                builder: (_context) {
                  return Container(
                    height: MediaQuery.of(context).size.height * 0.4,
                    child: ListView(
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            const Text('Modal BottomSheet'),
                            Container(
                              height: 50,
                              color: Colors.lightBlue,
                            ),
                            Container(
                              height: 300,
                              color: Colors.red,
                            ),
                            Container(
                              height: 50,
                              color: Colors.lightBlue,
                            ),
                            ElevatedButton(
                              child: const Text('Close BottomSheet'),
                              onPressed: () => Navigator.pop(context),
                            ),
                            Container(
                              height: 50,
                              color: Colors.lightBlue,
                            ),
                          ],
                        ),
                      ],
                    ),
                  );

                  //   DraggableScrollableSheet(
                  //   // initialChildSize: 0.6,
                  //   // minChildSize: 0.1,
                  //   // maxChildSize: 0.9,
                  //   builder: (context, scrollController) {
                  //     return ;
                  //   },
                  // );
                },
              );
            },
            child: Container(
              color: Colors.lightBlueAccent,
              child: const Text('Demo BottomSheet'),
            ),
          ),
        ),
      ),
    );
  }
}
