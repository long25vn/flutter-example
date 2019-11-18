When building a subtree of widgets, you may need to propagate data down
the widgets tree. For example, your root widget of a subtree may define
some context data, for example, configuration data retrieved from the
server. Other widgets in the subtree may also need to access the context data. One possible way is to add the context data to a widget’s constructor,
then propagate the data as constructor parameter of children widgets. The
major drawback of this solution is that you need to add the constructor
parameter to all widgets in the subtree. Even though some widgets may
not actually need the data, they still need to have the data to pass to their
children widgets.
A better approach is to use InheritedWidget class. BuildContext
class has an inheritFromWidgetOfExactType() method to get the
nearest instance of a particular type of InheritedWidget. With
InheritedWidget, you can store the context data in an InheritedWiget
instance. If a widget needs to access the context data, you can use
inheritFromWidgetOfExactType() method to get the instance and access
the data. If an inherited widget changes state, it will cause its consumers to
rebuild.

```dart
class ConfigWidget extends InheritedWidget {
  const ConfigWidget({
    Key key,
    @required this.config,
    @required Widget child,
  })  : assert(config != null),
        assert(child != null),
        super(key: key, child: child);
  final String config;
  static String of(BuildContext context) {
    final ConfigWidget configWidget =
        context.inheritFromWidgetOfExactType(ConfigWidget);
    return configWidget.config;
  }

  @override
  bool updateShouldNotify(ConfigWidget oldWidget) {
    return config != oldWidget.config;
  }
}
```
`ConfigWidget` class has the data config. The static
`of()` method gets the nearest ancestor `ConfigWidget` instance for the
config value. The method `updateShouldNotify()` determines when the
consumer widgets should be notified.
