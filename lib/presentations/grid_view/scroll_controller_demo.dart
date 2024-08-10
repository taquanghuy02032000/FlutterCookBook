import 'package:flutter/material.dart';
import 'package:flutter_cook_book/presentations/widget_common/base_screen.dart';

class ScrollControllerDemo extends StatefulWidget {
  const ScrollControllerDemo({Key? key}) : super(key: key);

  @override
  State<ScrollControllerDemo> createState() => _ScrollControllerDemoState();
}

class _ScrollControllerDemoState extends State<ScrollControllerDemo> {
  final ScrollController _scrollController = ScrollController();
  bool showLoading = false;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      _handleScroll();
    });
  }

  void _handleScroll() {
    if (_scrollController.position.pixels == _scrollController.position.maxScrollExtent) {}
  }

  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      titleScreen: 'Demo BaseScreen',
      bodyScreen: RefreshIndicator(
        onRefresh: () async {},
        child: ListView(
          controller: _scrollController,
          children: [
            gridViewItem(),
            gridViewItem(isColorPicker: true),
            gridViewItem(),
            gridViewItem(isColorPicker: true),
            gridViewItem(),
            gridViewItem(isColorPicker: true),
            gridViewItem(),
            gridViewItem(isColorPicker: true),
            gridViewItem(),
            InkWell(
                onTap: () {
                  _scrollController.animateTo(0,
                      duration: Duration(milliseconds: 500), curve: Curves.bounceOut);
                },
                child: Text(
                  'button',
                )),
            gridViewItem(isColorPicker: true),
            gridViewItem(),
            gridViewItem(isColorPicker: true),
            gridViewItem(),
            gridViewItem(isColorPicker: true),
            gridViewItem(),
            gridViewItem(isColorPicker: true),
            gridViewItem(),
            gridViewItem(isColorPicker: true),
          ],
        ),
      ),
    );
  }

  Widget gridViewItem({bool isColorPicker = false}) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: isColorPicker ? Colors.redAccent : Colors.lightBlueAccent,
      ),
      height: 70,
      width: 70,
      child: const Center(
        child: Text('anomus'),
      ),
    );
  }
}
