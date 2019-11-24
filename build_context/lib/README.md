
When building a widget, the location of the widget in the widgets tree may
determine its behavior, especially when it has an InheritedWidget as its
ancestor. BuildContext class provides methods to access information
related to the location;

![](https://i.imgur.com/QXE8BvR.png)
![](https://i.imgur.com/LOrrOVl.png)

```dart
class WithBuildContext extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Column column = context.ancestorWidgetOfExactType(Column);
    return Text(column.children.length.toString());
  }
}
```
