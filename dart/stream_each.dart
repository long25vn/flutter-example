// asynchronous data 
main() async {
  Duration interval = Duration(seconds: 1);
  Stream<int> stream = Stream<int>.periodic(interval,transform);
  stream = stream.take(10);
  
  stream.forEach((int x){
    print(x);
  });
  
}
int transform(int x){
  return (x + 1) * 2;
}