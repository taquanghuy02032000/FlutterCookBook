import 'package:flutter/material.dart';
import 'package:flutter_cook_book/presentations/widget_common/base_screen.dart';
import 'package:flutter_cook_book/presentations/widget_common/text_form_field_common.dart';

class ExeTextFieldScreen extends StatefulWidget {
  const ExeTextFieldScreen({Key? key}) : super(key: key);

  @override
  State<ExeTextFieldScreen> createState() => _ExeTextFieldScreenState();
}

class _ExeTextFieldScreenState extends State<ExeTextFieldScreen> {
  late TextEditingController _userNameController;
  late TextEditingController _passWordController;
  String userNameForUi = "";
  String passWordForUi = "";

  @override
  void initState() {
    super.initState();
    _userNameController = TextEditingController();
    _passWordController = TextEditingController();
  }

  @override
  void dispose() {
    _userNameController.dispose();
    _passWordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      titleScreen: 'Exe TextField',
      bodyScreen: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 16,
        ),
        child: Column(
          children: [
            ///UserEmail UI
            // TextFormField(
            //   controller: _userNameController,
            //   decoration: const InputDecoration(labelText: "UserName"),
            // ),
            TextFormFieldCommon(label: "UserName", controller: _userNameController),

            ///Password UI
            TextFormField(
              controller: _passWordController,
              obscureText: true,
              decoration: const InputDecoration(labelText: "Password"),
            ),

            ///Button

            ElevatedButton(
              onPressed: () {
                userNameForUi = _userNameController.text;
                passWordForUi = _passWordController.text;
                setState(() {});
              },
              style: ElevatedButton.styleFrom(backgroundColor: Colors.lightBlue),
              child: Center(
                child: Text(
                  'Click me',
                  // style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.white),
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: const Color(
                          0xffffffff,
                        ),
                      ),
                ),
              ),
            ),

            ///Just Text
            Text(
              'Tên đăng nhập mật khẩu là',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            Text(
              'UserName là $userNameForUi',
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(fontSize: 14),
            ),
            Text(
              'Mật khẩu là $passWordForUi',
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(fontSize: 14),
            )
          ],
        ),
      ),
    );
  }
}
