import 'package:flutter/material.dart';
import 'package:flutter_app_provider_1/counter/model/counter.dart';
import 'package:provider/provider.dart';

class StatefulChildPage extends StatefulWidget {

  StatefulChildPage({Key key}) : super(key: key);

  @override
  _StatefulChildPageState createState() => _StatefulChildPageState();
}

class _StatefulChildPageState extends State<StatefulChildPage> {

  @override
  Widget build(BuildContext context) {
    print('[Debug] _StatefulChildPageState.build');
    return Consumer<Counter>(
        builder: (context, counter, child) {
          print('[Debug] _StatefulChildPageState.Consumer.build');
          return Text(
            'this is StatefulChildPage ${counter.value}',
          );
        }
    );
  }
}

class StatelessChildPage extends StatelessWidget {
  StatelessChildPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('[Debug] StatelessChildPage.build');
    return Consumer<Counter>(
        builder: (context, counter, child) {
          print('[Debug] StatelessChildPage.Consumer.build');
          return Text(
            'this is StatelessChildPage ${counter.value}',
          );
        }
    );
  }
}