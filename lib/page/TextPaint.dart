import 'package:flutter/material.dart';
import 'dart:convert';
import 'dart:typed_data';
import 'package:flutter/widgets.dart';


class TextPaint extends StatefulWidget {
  TextPaint({Key key}) : super(key: key);

  @override
  _inkwellState createState() => _inkwellState();
}

class _inkwellState extends State<TextPaint> {

  @override
  Widget build(BuildContext context) {
    // _controller = new TabController(
    //     length: 0, vsync: this, initialIndex: 1);
    return Scaffold(
      appBar: AppBar(
        title: Text('TextPaint'),
      ),
      body: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Stack(
                children: <Widget>[
                  // Stroked text as border.
                  Text(
                    'Greetings, planet!',
                    style: TextStyle(
                      fontSize: 40,
                      foreground: Paint()
                        ..style = PaintingStyle.stroke
                        ..strokeWidth = 6
                        ..color = Colors.blue[700],
                    ),
                  ),
                  // Solid text as fill.
                  Text(
                    'Greetings, planet!',
                    style: TextStyle(
                      fontSize: 40,
                      color: Colors.grey[300],
                    ),
                  ),
                ],
              ),
            ),
            Text(
              '目前沒有i撩女王',
              style: TextStyle(
//                     color: Colors.red,
                  fontSize: 30.0,
                  foreground: Paint()
                    ..style = PaintingStyle.stroke
                    ..strokeWidth = 1
                    ..color = Colors.red),),

          ]
      ),
    );
  }
}
