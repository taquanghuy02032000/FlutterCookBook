import 'package:flutter/material.dart';

class BottomSheetExe extends StatefulWidget {
  const BottomSheetExe({
    Key? key,
    required this.quality,
  }) : super(key: key);
  final int quality; //get current value in cart
  // final int quality; //get current value in cart

  @override
  State<BottomSheetExe> createState() => _BottomSheetExeState();
}

class _BottomSheetExeState extends State<BottomSheetExe> {
  late int quality;

  @override
  void initState() {
    super.initState();
    quality = widget.quality;
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
                      onPressed: () {},
                      child: const Text('(-)'),
                    ),
                    Text('$quality'),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text('(+)'),
                    )
                  ],
                ),
                const SizedBox(
                  height: 12,
                ),
                ElevatedButton(
                  onPressed: () {
                    // callback(quality)
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
