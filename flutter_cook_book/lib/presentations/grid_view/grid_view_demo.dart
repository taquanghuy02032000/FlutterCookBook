import 'package:flutter/material.dart';
import 'package:flutter_cook_book/presentations/widget_common/base_screen.dart';

class GridViewDemo extends StatefulWidget {
  const GridViewDemo({Key? key}) : super(key: key);

  @override
  State<GridViewDemo> createState() => _GridViewDemoState();
}

class _GridViewDemoState extends State<GridViewDemo> {
  late List<GameModel> gameModel = [];

  @override
  void initState() {
    super.initState();
    gameModel = [
      GameModel("dog"),
      GameModel("cat"),
      GameModel("chicken"),
      GameModel("chicken"),
      GameModel("cat"),
      GameModel("dog"),
    ];
  }

  @override
  void dispose() {
    gameModel.clear();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      titleScreen: 'Demo Grid View Screen',
      bodyScreen: Column(
        children: [
          GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            primary: true,
            padding: const EdgeInsets.all(10),
            itemCount: gameModel.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 5.0,
              mainAxisSpacing: 5.0,
            ),
            itemBuilder: (BuildContext context, int index) {
              return gridViewItem(gameModel[index], (gameModel) {
                _handleLogicItem(gameModel);
              });
            },
          ),
          Visibility(visible: true, child: Text('reset'))
        ],
      ),
    );
  }

  void _handleLogicItem(GameModel gameModel) {
    setState(() {
      gameModel.isOpen = !gameModel.isOpen;
    });
  }

  ///Tính điểm
  //1 value == value  && open both  => ++ score

  Widget gridViewItem(
    GameModel gameModel,
    void Function(GameModel gameModel) callBack,
  ) {
    return InkWell(
      onTap: () {
        callBack(gameModel);
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.lightBlueAccent,
        ),
        height: 70,
        width: 70,
        child: Center(
          child: Text(gameModel.isOpen ? gameModel.value : "?"),
        ),
      ),
    );
  }
}

class GameModel {
  bool isOpen;
  String value;

  GameModel(this.value, {this.isOpen = false});

  @override
  String toString() {
    return 'GameModel{isOpen: $isOpen, value: $value}';
  }
}
