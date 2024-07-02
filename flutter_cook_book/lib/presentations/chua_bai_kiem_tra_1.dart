import 'package:flutter/material.dart';
import 'package:flutter_cook_book/presentations/widget_common/text_form_field_common.dart';
import 'package:flutter_cook_book/resources/image_app.dart';

class Screen2 extends StatelessWidget {
  const Screen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: const Color(0xffFAFAFA),
          child: Column(
            children: [
              header(),
              const SizedBox(
                height: 15,
              ),
              searchWidget()
            ],
          ),
        ),
      ),
    );
  }

  Container searchWidget() {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
      ),
      child: Row(
        children: [
          Expanded(
            child: TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.search),
                fillColor: Color(0xffF7F7F7),
                filled: true,
                border: InputBorder.none,
                hintText: 'Search address or near you',
              ),
            ),
          ),
          const SizedBox(
            width: 8,
          ),
          Container(
            height: 51,
            width: 51,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.lightBlueAccent,
            ),
            padding: const EdgeInsets.all(16),
            child: Image.asset(ImageApp.menuHeaderBt),
          )
        ],
      ),
    );
  }

  Container header() {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Location',
                style: TextStyle(
                  fontSize: 13,
                ),
              ),
              Row(
                children: [
                  const Text(
                    'Jarkata',
                    style: TextStyle(
                      fontSize: 21,
                    ),
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  Image.asset(
                    ImageApp.downArrowChuaBT,
                    width: 15,
                    height: 15,
                  )
                ],
              ),
            ],
          ),
          Image.asset(
            ImageApp.alertNotification,
            height: 25,
            width: 25,
          ),
        ],
      ),
    );
  }
}
