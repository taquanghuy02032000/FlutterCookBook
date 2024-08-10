import 'package:flutter/material.dart';
import 'package:flutter_cook_book/presentations/widget_common/base_screen.dart';
import 'package:flutter_cook_book/resources/image_app.dart';

class ListViewDemoScreen extends StatefulWidget {
  const ListViewDemoScreen({Key? key}) : super(key: key);

  @override
  State<ListViewDemoScreen> createState() => _ListViewDemoScreenState();
}

class _ListViewDemoScreenState extends State<ListViewDemoScreen> {
  final List<BubbleModel> bubbleModels = [
    BubbleModel(ImageApp.imageBike, "huy"),
    BubbleModel(ImageApp.imageBike, "hoang"),
    BubbleModel(ImageApp.imageBike, "hiep"),
    BubbleModel(ImageApp.imageBike, "han"),
    BubbleModel(ImageApp.imageBike, "han"),
  ];

  @override
  Widget build(BuildContext context) {
    final doubleHeight = MediaQuery.of(context).size.height;
    final doubleWidth = MediaQuery.of(context).size.width;

    return BaseScreen(
      titleScreen: 'Demo List View',
      bodyScreen: Container(
        padding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 8,
        ),
        child: SingleChildScrollView(
          child: Container(
            height: 500,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                buildTextFormField(),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 100,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    children: [
                      bubbleChatWidget(),
                      bubbleChatWidget(),
                      bubbleChatWidget(),
                      bubbleChatWidget(),
                      bubbleChatWidget(),
                      bubbleChatWidget(),
                      bubbleChatWidget(),
                      bubbleChatWidget(),
                      // bubbleChatWidget()
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Expanded(child: listViewSeperated()),
                // listViewBuilderDemoWidget(),
                // ListView(
                //   physics: const NeverScrollableScrollPhysics(),
                //   shrinkWrap: true,
                //   children: [
                //     verticleBubbleChat(),
                //     verticleBubbleChat(),
                //     verticleBubbleChat(),
                //     verticleBubbleChat(),
                //     verticleBubbleChat(),
                //     verticleBubbleChat(),
                //     verticleBubbleChat(),
                //     verticleBubbleChat(),
                //     verticleBubbleChat(),
                //     verticleBubbleChat(),
                //   ],
                // )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Row verticleBubbleChat() {
    return Row(
      children: [
        CircleAvatar(
          child: Image.asset(
            ImageApp.imageBike,
            fit: BoxFit.fill,
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('title'),
              Text('description'),
            ],
          ),
        )
      ],
    );
  }

  ListView listViewBuilderDemoWidget() {
    return ListView.builder(
      itemCount: 15,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        final Color colorResult = (index % 2 == 0) ? Colors.red : Colors.yellow;
        return Container(
          height: 50,
          color: colorResult,
        );
      },
    );
  }

  ListView listViewSeperated() {
    return ListView.separated(
      itemBuilder: (context, index) {
        final Color colorResult = (index % 2 == 0) ? Colors.red : Colors.yellow;
        return Container(
          height: 50,
          color: colorResult,
        );
      },
      separatorBuilder: (context, index) {
        return Container(
          height: 5,
          color: Colors.black,
        );
      },
      itemCount: 10,
    );
  }

  Row bubbleChatWidget() {
    return Row(
      children: [
        Column(
          children: [
            Container(
              height: 70,
              width: 70,
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.black,
                  width: 3,
                ),
              ),
              child: CircleAvatar(
                child: Image.asset(
                  ImageApp.imageBike,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Text('It is ')
          ],
        ),
        SizedBox(
          width: 10,
        ),
      ],
    );
  }

  TextFormField buildTextFormField() {
    return TextFormField(
      cursorColor: Colors.purpleAccent,
      decoration: InputDecoration(
        fillColor: Colors.white,
        filled: true,
        prefixIcon: const Icon(
          Icons.search,
          color: Colors.purpleAccent,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4.0),
          borderSide: const BorderSide(
            color: Colors.purpleAccent,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4.0),
          borderSide: const BorderSide(
            color: Colors.purpleAccent,
          ),
        ),
      ),
    );
  }
}

class BubbleModel {
  String imagePath;
  String name;

  BubbleModel(this.imagePath, this.name);
}
