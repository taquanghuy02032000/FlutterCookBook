import 'package:flutter/material.dart';

class BottomSheetExe extends StatefulWidget {
  const BottomSheetExe({
    Key? key,
    required this.callBack,
    required this.currentValueItem,
  }) : super(key: key);
  final int currentValueItem;
  final Function(int valueCallBack) callBack;

  @override
  State<BottomSheetExe> createState() => _BottomSheetExeState();
}

class _BottomSheetExeState extends State<BottomSheetExe> {
  late int quality;

  @override
  void initState() {
    super.initState();
    quality = widget.currentValueItem;
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Expanded(child: Text('Helmet')),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        quality--;
                        setState(() {});
                      },
                      child: const Text('(-)'),
                    ),
                    Text('$quality'),
                    ElevatedButton(
                      onPressed: () {
                        quality++;
                        setState(() {});
                      },
                      child: const Text('(+)'),
                    )
                  ],
                ),
                const SizedBox(
                  height: 12,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                    widget.callBack(quality);
                  },
                  child: const Text('Confirm'),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
