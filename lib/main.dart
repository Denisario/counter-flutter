import 'package:flutter/material.dart';

void main() => runApp(MainWidget());

class MainWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Counter'),
          centerTitle: true,
        ),
        body: BlockWidget(),
      ),
    );
  }
}

class BlockWidget extends StatelessWidget{
  @override
  Widget build(BuildContext ctx){
    return Container(
          color: Colors.green,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Click + to increment",
                  style: TextStyle(fontSize: 28),
                ),
                CounterWidget(),
                Text(
                  "Click - to decrement",
                  style: TextStyle(fontSize: 28),
                )
              ],
            ),
          ),
        );
  }
}

class CounterWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CounterStateWidget();
  }
}

class _CounterStateWidget extends State<CounterWidget> {
  int? _counter;

  @override
  void initState() {
    super.initState();
    _counter = 50;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.greenAccent,
      width: 200,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          IconButton(
            onPressed: () {
              _decrement();
            },
            icon: Icon(Icons.remove),
            iconSize: 50,
          ),
          Text(
            "${_counter}",
            style: TextStyle(fontSize: 50),
          ),
          IconButton(
            onPressed: () {
              _increment();
            },
            icon: Icon(Icons.add),
            iconSize: 50,
          ),
        ],
      ),
    );
  }

  void _increment() {
    setState(() {
      _counter = _counter!+1;
    });
  }

  void _decrement() {
    setState(() {
      _counter = _counter!-1;
    });
  }
}
