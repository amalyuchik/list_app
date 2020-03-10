import 'package:flutter/material.dart';

import 'Stuff.dart';
import 'stuff_card.dart';

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

  List<Stuff> stuffList = [
    Stuff(name: 'Stuff name 1', text: 'Stuff text 1'),
    Stuff(name: 'Stuff name 2', text: 'Stuff text 2'),
    Stuff(name: 'Stuff name 3', text: 'Stuff text 3')
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
        children: stuffList.map((item) => StuffCard(
            stuff: item,
            delete: (){
              setState(() {
                stuffList.remove(item);
              });
          }
        )).toList(),
      ),
    );
  }
}


