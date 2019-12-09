// asynchronous data 
main() async {
  Duration interval = Duration(seconds: 1);
  Stream<int> stream = Stream<int>.periodic(interval);
  stream = stream.take(10);
  print(await stream.length);
}