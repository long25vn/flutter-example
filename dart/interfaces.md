You should be familiar with interfaces as the contract of classes. Unlike
other object-oriented programming languages, Dart has no concept
of interfaces. Every class has an implicit interface that contains all the
instance members of this class and the interfaces it implements. You can
use implements to declare that a class implements the API of another class.

```dart
class DataLoader {
    void load() {
    print('load data');
  }
}
class CachedDataLoader implements DataLoader {
  @override
  void load() {
    print('load from cache');
  }
}
void main() {
  var loader = CachedDataLoader();
  loader.load();
}
```
