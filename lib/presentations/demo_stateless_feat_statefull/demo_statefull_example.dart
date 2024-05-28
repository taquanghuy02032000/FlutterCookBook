import 'package:flutter/material.dart';
import 'package:flutter_cook_book/presentations/demo_stateless_feat_statefull/widget/part_of_ui.dart';

class DemoStateFullExampleScreen extends StatefulWidget {
  const DemoStateFullExampleScreen({Key? key}) : super(key: key);

  @override
  State<DemoStateFullExampleScreen> createState() => _DemoStateFullExampleScreenState();
}

class SomThien {
  int number;

  SomThien(this.number);

  void donDep() {}
}

class _DemoStateFullExampleScreenState extends State<DemoStateFullExampleScreen> {
  String gender = "female";

  late SomThien result;

  @override
  void initState() {
    super.initState();
    result = SomThien(12);
    print('stateFull initState');
  }

  @override
  void didUpdateWidget(covariant DemoStateFullExampleScreen oldWidget) {
    super.didUpdateWidget(oldWidget);
    print('stateFull didUpdateWidget');
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print('stateFull didChangeDependencies');
  }

  @override
  void deactivate() {
    super.deactivate();
    print('stateFull deactivate');
  }

  @override
  void dispose() {
    super.dispose();
    result.donDep();
  }

  @override
  Widget build(BuildContext context) {
    ///
    ///  1biillion -> 3s
    ///
    ///

    print("stateFull built");
    return Scaffold(
      floatingActionButton: InkWell(
        onTap: () {
          setState(() {
            if (gender == "female") {
              gender = "male";
            } else {
              gender = "female";
            }
          });
        },
        child: Container(
          height: 70,
          width: 70,
          decoration: const BoxDecoration(shape: BoxShape.circle, color: Colors.orangeAccent),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: Text(
          'Demo StateFull Screen $result',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ),
      body: Container(
        color: Colors.white,
        child: Center(
          child: Column(
            children: [
              const CommonBoxWidget(),
              Text(
                // "$gender",
                gender,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
