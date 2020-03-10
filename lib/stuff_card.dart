import 'package:flutter/material.dart';

import 'Stuff.dart';

class StuffCard extends StatelessWidget {

  final Stuff stuff;
  final Function delete;
  StuffCard({ this.stuff, this.delete });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(stuff.text,
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.grey[600],
              ),
            ),
            SizedBox(height: 6.0),
            Text(
              stuff.name,
              style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.grey[800]
              ),
            ),
            SizedBox(height: 8.0),
            FlatButton.icon(onPressed: delete,
                label: Text('Delete'),
                icon: Icon(Icons.delete))

          ],
        ),
      ),
    );
  }
}