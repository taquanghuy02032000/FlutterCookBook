import 'package:flutter/material.dart';

class BaseScreen extends StatelessWidget {
  const BaseScreen({
    Key? key,
    required this.titleScreen,
    required this.bodyScreen,
    this.floatActionButton,
  }) : super(key: key);
  final String titleScreen;
  final Widget bodyScreen;
  final Widget? floatActionButton;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: floatActionButton,
      appBar: AppBar(
        centerTitle: true,
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
