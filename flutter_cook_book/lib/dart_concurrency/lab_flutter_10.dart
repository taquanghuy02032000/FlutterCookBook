import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LabFlutter10DartConcurrency extends StatefulWidget {
  const LabFlutter10DartConcurrency({Key? key}) : super(key: key);

  @override
  State<LabFlutter10DartConcurrency> createState() => _LabFlutter10DartConcurrencyState();
}

class _LabFlutter10DartConcurrencyState extends State<LabFlutter10DartConcurrency> {
  // late StreamController<int> _secondsStreamController;
  // late StreamController<int> _minutesStreamController;
  //
  // @override
  // void initState() {
  //   super.initState();
  //   _secondsStreamController = StreamController<int>.broadcast();
  //   _minutesStreamController = StreamController<int>.broadcast();
  //   _startTimer();
  // }
  //
  // void _startTimer() {
  //   final startTime = DateTime.now();
  //   Timer.periodic(Duration(seconds: 1), (timer) {
  //     final elapsedSeconds = DateTime.now().difference(startTime).inSeconds;
  //     final elapsedMinutes = DateTime.now().difference(startTime).inMinutes;
  //     _secondsStreamController.sink.add(elapsedSeconds);
  //     _minutesStreamController.sink.add(elapsedMinutes);
  //   });
  // }

  late StreamController<String> _countStreamController;

  @override
  void initState() {
    super.initState();
    _countStreamController = StreamController<String>();
    _countStreamController.add("Hello what is ur name?");
  }

  @override
  void dispose() {
    _countStreamController.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Demo currency'),
      ),
      body: Container(
        child: Column(
          children: [
            StreamBuilder<String>(
              stream: _countStreamController.stream,
              builder: (context, snapshot) {
                final data = snapshot.data ?? '';
                return Text(data);
              },
            ),
            ElevatedButton(
              onPressed: () {
                _countStreamController.add("my name is huy");
              },
              child: Text('Press me'),
            ),
          ],
        ),
      ),
    );
  }
}
