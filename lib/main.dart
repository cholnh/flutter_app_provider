import 'package:flutter/material.dart';
import 'package:flutter_app_provider_1/counter/model/counter.dart';
import 'package:flutter_app_provider_1/counter/ui/home_page.dart';
import 'package:provider/provider.dart';

void main() => runApp(
    ChangeNotifierProvider(
      create: (_) => Counter(),
      child: MyApp(),
    ));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
