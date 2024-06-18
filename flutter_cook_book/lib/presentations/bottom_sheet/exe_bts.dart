import 'package:flutter/material.dart';
import 'package:flutter_cook_book/presentations/bottom_sheet/widgets/bottom_sheet_exe.dart';
import 'package:flutter_cook_book/presentations/widget_common/base_screen.dart';

class ExeBottomSheet extends StatefulWidget {
  const ExeBottomSheet({Key? key}) : super(key: key);

  @override
  State<ExeBottomSheet> createState() => _ExeBottomSheetState();
}

class _ExeBottomSheetState extends State<ExeBottomSheet> {
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
                quality: 3,
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
      bodyScreen: Container(
        child: const Text('You have 3 items current in cart'),
      ),
    );
  }
}
