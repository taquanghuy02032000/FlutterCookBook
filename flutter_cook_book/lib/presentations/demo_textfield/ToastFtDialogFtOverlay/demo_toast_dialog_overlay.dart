import 'package:flutter/material.dart';
import 'package:flutter_cook_book/presentations/widget_common/base_screen.dart';

class DemoToastDialogOverlayScreen extends StatefulWidget {
  const DemoToastDialogOverlayScreen({Key? key}) : super(key: key);

  @override
  State<DemoToastDialogOverlayScreen> createState() => _DemoToastDialogOverlayScreenState();
}

class _DemoToastDialogOverlayScreenState extends State<DemoToastDialogOverlayScreen> {
  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      titleScreen: 'Demo Toast Dialog Overlay',
      bodyScreen: Container(
        child: Column(
          children: [
            ElevatedButton(
              child: Text('click me to test toast'),
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  behavior: SnackBarBehavior.floating,
                  margin: EdgeInsets.only(bottom: MediaQuery.of(context).size.height / 2),
                  duration: Duration(seconds: 1),
                  backgroundColor: Colors.transparent,
                  content: Container(
                    margin: EdgeInsets.all(20),
                    child: Row(
                      children: [
                        Expanded(child: Icon(Icons.add)),
                        Expanded(child: Text("ADDED")),
                      ],
                    ),
                  ),
                ));
              },
            ),
            ElevatedButton(
              child: Text('click me show dialog'),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) => Dialog(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        const Text('This is a fullscreen dialog.'),
                        const SizedBox(height: 15),
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text('Close'),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
