import 'package:flutter/material.dart';
import 'package:flutter_app_provider_1/counter/model/counter.dart';
import 'package:flutter_app_provider_1/counter/ui/child_page.dart';
import 'package:provider/provider.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  void initState() {
    print('[Debug] _MyHomePageState.initState');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print('[Debug] _MyHomePageState.build');

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Consumer<Counter>(
              builder: (context, counter, child) {
                print('[Debug] _MyHomePageState.Consumer.build');
                return Text(
                  '${counter.value}',
                  style: Theme.of(context).textTheme.display1,
                );
              }
            ),
            StatefulChildPage(),
            StatelessChildPage(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: Provider.of<Counter>(context, listen: false).increase,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}