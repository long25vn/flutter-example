// asynchronous data 
main() async {
  Duration interval = Duration(seconds: 1);
  Stream<int> stream = Stream<int>.periodic(interval,transform);
  // Added this statement
  stream = stream.takeWhile(condition);
  await for(int i in stream){
      print(i);
   }
}
int transform(int x){
  return (x + 1) * 2;
}  
// Added this function
bool condition(int x){
  return x <= 10;
}