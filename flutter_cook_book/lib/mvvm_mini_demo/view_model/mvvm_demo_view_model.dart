import 'package:dio/dio.dart';
import 'package:flutter_cook_book/mvvm_mini_demo/model/mvvm_demo_model.dart';
import 'package:rxdart/rxdart.dart';

class MVVMDemoViewModel {
  // https://api.randomuser.me/?results=3
  final dio = Dio();

  // final BehaviorSubject<List<HumanModel>?> humanStream = BehaviorSubject();
  final BehaviorSubject<Map<String, dynamic>> humanTotalStream = BehaviorSubject.seeded({
    "isLoading": false,
    "data": null,
  });

  void getInfoUsers() async {
    humanTotalStream.add({
      "isLoading": true,
      "data": null,
    });
    final response = await dio.get('https://api.randomuser.me/?results=3');
    List<HumanModel>? humans;
    try {
      humans = HumanTotalResponse.fromJson(response.data).humans;
      // humanStream.add(humans);
      humanTotalStream.add({
        "isLoading": false,
        "data": humans,
      });
    } catch (e) {
      humans = null;
      humanTotalStream.add({
        "isLoading": false,
        "data": null,
      });
    }
  }

  void dispose() {}
}
