// asynchronous data 
main() async {
  Duration interval = Duration(seconds: 1);
  Stream<int> stream = Stream<int>.periodic(interval,transform);
  stream = stream.take(5);
  List<int> data = await stream.toList();
  for(int i in data){
      print(i);
   }
}
int transform(int x){
  return (x + 1) * 2;
}