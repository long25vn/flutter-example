// asynchronous data 
main() async {
  Duration interval = Duration(seconds: 2);
  Stream<int> stream = Stream<int>.periodic(interval, callback);
  await for(int i in stream){
    print(i);
  }
}
// This callback modify the given value to even number.
int callback(int value){
  return ( value + 1 ) * 2;
}