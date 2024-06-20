import 'package:flutter/material.dart';
import 'package:flutter_cook_book/presentations/bottom_sheet/widgets/bottom_sheet_exe.dart';
import 'package:flutter_cook_book/presentations/widget_common/base_screen.dart';

class ExeBottomSheet extends StatefulWidget {
  const ExeBottomSheet({
    Key? key,
  }) : super(key: key);

  @override
  State<ExeBottomSheet> createState() => _ExeBottomSheetState();
}

class _ExeBottomSheetState extends State<ExeBottomSheet> {
  int initValue = 0;

  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      titleScreen: 'Bottom Sheet Example',
      floatActionButton: InkWell(
        onTap: () {
          showModalBottomSheet(
            context: context,
            builder: (contextBottomSheet) {
              return BottomSheetExe(
                callBack: (int valueCallBack) {
                  initValue = valueCallBack;
                  setState(() {});
                },
                currentValueItem: initValue,
              );
            },
          );
        },
        child: Container(
          color: Colors.redAccent,
          padding: const EdgeInsets.all(20),
          child: const Text('Select item'),
        ),
      ),
      bodyScreen: Text('You have $initValue items current in cart'),
    );
  }
}
