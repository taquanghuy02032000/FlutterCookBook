import 'dart:async';

void main() {
  // startStream();
  // demoStreamFromFuture();
  // createStreamsFromFutures();
  // demoCastStream();
  //
  // int max = 15;
  // List<int> arrs = [];
  // for (var i = 0; i < max; i++) {
  //   arrs.insert(i, i);
  // }
  // print(yieldWay(arrs));
  // demoStreamValueFeatEmpty();
  StreamController streamController = StreamController();
  StreamSubscription streamSubscription = streamController.stream.listen((event) {
    print("stream onListen: $event");
  });
  streamController.sink.add("event"); // StreamController sẽ giới thiệu ở slide sau

  streamController.add("1111");
  Future.delayed(Duration(seconds: 2), () {
    streamController.add("2222");
  });

  /// màn hình A Khi bấm vào home
  /// 1.Danh sách top foods  (getTopFoods)-> Loading, Done (Error, EmptyData, Success)
  /// ui -> StreamBuilder ->
  ///
  /// Future<void> getFood() {
  ///   streamController.add (Loading)
  ///   response = await ...... ();
  ///   streamController;
  ///   if(response)
  ///   if(response empty or not)
  ///       add(empty)
  ///       else
  ///       add (réponse)
  ///   else
  ///   addError
  ///
  /// }
  ///
  ///
  ///
}

///Stream.value && .empty
void demoStreamValueFeatEmpty() {
  Stream<String> streamString = Stream.value('3').asBroadcastStream();

  streamString.listen((event) {
    print('data $event');
  });

  streamString.listen((event) {
    print('data2 $event');
  });
}

void startStream() {
  Stream<String> myStream = Stream.periodic(Duration(seconds: 1), (count) {
    return "data take $count";
  }).take(10);

  myStream.listen((data) {
    print('data $data');
  }, onDone: () {
    print("onDone");
  });
}

Future<int> testDelayed(int seconds) async {
  await Future.delayed(Duration(seconds: seconds));
  return seconds;
}

void createStreamsFromFutures() {
  Iterable<Future> futures = [testDelayed(2), testDelayed(1), testDelayed(3)];
  Stream stream3 = Stream.fromFutures(futures);
  stream3.listen((event) {
    print("onEvent -> $event");
  });
}

void demoStreamFromFuture() {
  Stream stream2 = Stream.fromFuture(testDelayed(2));
  stream2.listen((event) {
    print("onEvent -> $event"); // sau khi Future complete (chờ 3s) sẽ in ra: onEvent -> 10
  });
  stream2 = Stream.value(30);
  stream2.listen((event) {
    print("onEvent -> $event"); // sau khi Future complete (chờ 3s) sẽ in ra: onEvent -> 10
  });
}

void demoCastStream() {
  // StreamSubscription<int> _streamController = StreamController<int>();
  Stream sourceStream = Stream.periodic(const Duration(seconds: 1), (i) {
    print("i -> $i");
    if (i == 10) {}
    return i;
  });

  sourceStream.listen((event) {
    print("onEvent1 -> $event");
  });

  Stream s = Stream.castFrom(sourceStream);
  StreamSubscription _streamController = s.listen((event) {
    print("onEvent -> $event");
  });

  // Hủy đăng ký stream sau 10 giây
  Future.delayed(Duration(seconds: 10), () {
    _streamController.cancel();
    print('Stream subscription canceled');
  });
}

Iterable yieldWay(List<int> arrs) sync* {
  yield* arrs.where((element) => element % 2 == 0);
  yield* arrs.where((element) => element % 3 == 0);
  yield* arrs.where((element) => element % 5 == 0);
}
