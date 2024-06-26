import 'package:flutter/material.dart';
import 'package:flutter_cook_book/presentations/demo_navigaion/btvn/screen_1.dart';
import 'package:flutter_cook_book/presentations/demo_navigaion/screen_b.dart';
import 'package:flutter_cook_book/presentations/demo_navigaion/screen_c.dart';
import 'package:flutter_cook_book/presentations/demo_navigaion/screen_d.dart';
import 'package:flutter_cook_book/presentations/demo_stateless_feat_statefull/demo_statefull_example.dart';
import 'package:flutter_cook_book/presentations/demo_stateless_feat_statefull/demo_stateless_example.dart';
import 'package:flutter_cook_book/presentations/demo_textfield/ToastFtDialogFtOverlay/demo_toast_dialog_overlay.dart';
import 'package:flutter_cook_book/presentations/demo_textfield/chua_bt_text_field.dart';
import 'package:flutter_cook_book/presentations/demo_textfield/demo_textfield_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      // initialRoute: "/b",
      // routes: <String, WidgetBuilder>{
      //   "/b": (context) => ScreenB(),
      //   "/c": (context) => ScreenC(inputFromBScreen: '',),
      //   "/d": (context) => ScreenD(),
      // },
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
          primary: Colors.lightBlue,
        ),
        useMaterial3: true,
        textTheme: const TextTheme(
          bodyMedium: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
            color: Colors.pink,
          ),
        ),
      ),
      // home: const ScreenB(),
      // home: const DemoTextField(),
      home: const DemoToastDialogOverlayScreen(),
    );
  }
}
