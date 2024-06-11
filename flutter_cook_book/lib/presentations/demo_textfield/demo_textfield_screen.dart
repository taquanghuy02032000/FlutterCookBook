import 'package:flutter/material.dart';
import 'package:flutter_cook_book/presentations/widget_common/base_screen.dart';

class DemoTextField extends StatelessWidget {
  const DemoTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController _emailController = TextEditingController();
    return BaseScreen(
      titleScreen: 'Demo Text Field',
      bodyScreen: Container(
        padding: const EdgeInsets.only(
          top: 12,
          left: 16,
          right: 16,
        ),
        child: Column(
          children: [
            TextFormField(
              controller: _emailController,
              // obscureText: true,
              // maxLength: 7,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: "email",
                hintText: "Tài khoản",
                prefixIcon: const Icon(Icons.email),
                suffixIcon: InkWell(
                    onTap: () {
                      _emailController.clear();
                    },
                    child: Icon(Icons.clear)),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Colors.red,
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Colors.green,
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              onEditingComplete: () {
                print('Complete ${_emailController.value}');
                FocusManager.instance.primaryFocus?.unfocus();
              },
              onFieldSubmitted: (String value) {
                print('Summited $value');
              },
              onChanged: (String currentValue) {
                // if (currentValue.length > 20) {
                //   ScaffoldMessenger.of(context)
                //     ..removeCurrentSnackBar()
                //     ..showSnackBar(
                //       const SnackBar(
                //         content: Text(
                //           'input not validate',
                //         ),
                //       ),
                //     );
                // } else {
                //   //nothing
                // }
              },
            ),
          ],
        ),
      ),
    );

    ///Sau khi nhập 20 kí tự thì showToast
  }
}
