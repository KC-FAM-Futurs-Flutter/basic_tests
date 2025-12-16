import 'package:flutter/material.dart';

class CounterWidget extends StatefulWidget {
  const CounterWidget({Key? key}) : super(key: key);

  @override
  _CounterWidgetState createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  int counter = 0;

  void _increment() => setState(() => counter++);
  void _decrement() => setState(() => counter--);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Counter Test")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Count: $counter', key: Key('counter_text')),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _increment,
              key: Key('increment_button'),
              child: Text("+"),
            ),
            ElevatedButton(
              onPressed: _decrement,
              key: Key('decrement_button'),
              child: Text("-"),
            ),
          ],
        ),
      ),
    );
  }
}
