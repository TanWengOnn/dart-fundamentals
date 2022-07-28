import 'dart:async';

//import 'package:async_basics/async_basics.dart' as async_basics;

//-----------------Async/Await-----------------//
// void main(List<String> arguments) async {
//   await printSomething(2, "after 2 seconds"); 
//   printSomething(1, "after 1 seconds"); 
// }


// Future<void> printSomething(int seconds, String message) async  {
//   String a = "";
//   // Dummy async operation
//   await Future.delayed(Duration(seconds: seconds), () {
//     print(message);
//     a = "test";
//   });
//   print(a);
// }

//-----------------Exercise-----------------//
import 'dart:math';
void main(List<String> arguments) async {
  print("//---------Async/Await---------//");
  double price = double.parse((await getPrice(1)).toStringAsFixed(2));
  showPrices(price);

  print("//---------Streams---------//");
  // print("Method 1: ");
  // Stream<double> prices = getPricesStream();
  // prices.listen((double price) {
  //   showPrices(double.parse((price).toStringAsFixed(2)));
  // });
  // Reference: https://jelenaaa.medium.com/what-are-sync-async-yield-and-yield-in-dart-defe57d06381 

  print("Method 2: ");
  getPricesStream().listen((price) { showPrices(double.parse((price).toStringAsFixed(2))); }, onDone: () {
    print("Completed");
  },);

  // print("Method 3: ");
  // final StreamSubscription prices = getPricesStream().listen((price) { 
  //   showPrices(double.parse((price).toStringAsFixed(2)));
  // }, onDone: () {
  //   print("Completed");
  // });



}


Stream<double> getPricesStream() async* {
  final random = Random();

  final int numberOfResult = 10;
  for (var i = 0; i < numberOfResult; i++){
    final price = await getPrice(random.nextInt(5) + 1);
    yield price;
  }
}

Future<double> getPrice(int delay) {
  final random = Random();
  return Future.delayed(
    Duration(seconds: delay), 
    () => random.nextDouble() * 1000
  );
}

DateTime dateTime = DateTime.now();

void showPrices(double price) {
  int interval = dateTime.difference(DateTime.now()).inSeconds.abs();
  print("$price - $interval");
  dateTime = DateTime.now();
}

