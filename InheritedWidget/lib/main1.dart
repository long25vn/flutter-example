import 'package:flutter/material.dart';

void main() => runApp(new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new HomePage(),
    ));


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ConfigWidget(
      config: 'Hello!',
      child: Center(
        child: ConfigUserWidget(),
      ),
    );
  }
}

class ConfigUserWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text('Data is ${ConfigWidget.of(context)}');
  }
}

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
