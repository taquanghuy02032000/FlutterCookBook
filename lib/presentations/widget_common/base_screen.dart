import 'package:flutter/material.dart';

class BaseScreen extends StatelessWidget {
  const BaseScreen({
    Key? key,
    required this.titleScreen,
    required this.bodyScreen,
  }) : super(key: key);
  final String titleScreen;
  final Widget bodyScreen;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: Text(
          titleScreen,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ),
      body: bodyScreen,
    );
  }
}
