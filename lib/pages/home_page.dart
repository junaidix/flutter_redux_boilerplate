import 'package:flutter/material.dart';
import 'package:blank_flutter_app/containers/counter/counter.dart';
import 'package:blank_flutter_app/containers/counter/increase_counter.dart';


class HomePage extends StatelessWidget {
  final String title;

  HomePage(this.title);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(this.title),
      ),
      body: new Container(
        child: new Center(
          child: new Column(
            //mainAxisAlignment is an argument for Column, Row and other
            // layout widgets. It does what CSS's 'justify-content' does
            mainAxisAlignment: MainAxisAlignment.center,
            // If you recall, Column is a layout widget that
            // expects a List who's data is of type Widget:
            children: <Widget>[
              new Text(
                'You have pushed the button this many times:',
              ),
              new Counter(),
            ],
          ),
        ),
      ),
      floatingActionButton: new IncreaseCountButton()
      );
  }
}