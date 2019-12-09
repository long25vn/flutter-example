// asynchronous data 
main() async {
  Duration interval = Duration(seconds: 1);
  Stream<int> stream = Stream<int>.periodic(interval,transform);
  stream = stream.skipWhile((x)=> x>10);
  stream = stream.take(10);
  
  await for(int i in stream){
      print(i);
   }
}
int transform(int x){
  return (x + 1) * 2;
}
bool condition(int x){
  return x > 10;
}