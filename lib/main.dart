import 'package:flutter/material.dart';

void main() => runApp(
  MaterialApp(
    home: StuffList(),
  )
);

class StuffList extends StatefulWidget {
  @override
  _StuffListState createState() => _StuffListState();
}

class _StuffListState extends State<StuffList> {

  List<String> stuff = [
    'Stuff 1',
    'Stuff 2',
    'Stuff 3'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Amazing Stuff'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: stuff.map((item) => Text(item)).toList(),
      ),
    );
  }
}
