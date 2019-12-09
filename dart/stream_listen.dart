// asynchronous data 
main() async {
  Duration interval = Duration(seconds: 1);
  Stream<int> stream = Stream<int>.periodic(interval,(int x) => x);
  stream = stream.take(10);
  
  stream.listen((x){
    print(myList[x]);
  });
  
}

List<String> myList= ["A","B","C","D","E"];

int transform(int x){
  return x;
}