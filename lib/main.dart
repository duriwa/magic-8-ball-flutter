import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text('magic 8 ball'),
          ),
          body: magic8ball(),

        ),

      ),
    );

class magic8ball extends StatefulWidget {
  const magic8ball({Key key}) : super(key: key);

  @override
  _magic8ballState createState() => _magic8ballState();
}

class _magic8ballState extends State<magic8ball> {

  int ballNumber = 2;

  void changeBall(){
    ballNumber = Random().nextInt(5)+1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Row(
          children: [
            Expanded(
                child: FlatButton(
                    onPressed: (){
                      setState(() {
                        changeBall();
                      });
                    }
                    , child: Image.asset('images/ball$ballNumber.png'))
            )
          ],
        ),
    );
  }
}
