main(List<String> args) {
  DataHolder<String> dataHolder = new DataHolder('England');
  print(dataHolder.getData());
  dataHolder.setData('France');
  print(dataHolder.getData());
}
 
class DataHolder<T> {
  T data;
 
  DataHolder(this.data);
 
  getData() {
    return data;
  }
 
  setData(data) {
    this.data = data;
  }
}
