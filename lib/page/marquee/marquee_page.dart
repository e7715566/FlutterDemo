import 'package:flutter/material.dart';

import 'marquee.dart';


class MarqueePage extends StatefulWidget {
  MarqueePage({Key key}) : super(key: key);

  @override
  _MarqueePageState createState() => new _MarqueePageState();
}

class _MarqueePageState extends State<MarqueePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text('MarqueePage'),
        ),
        body: new Center(
            child: new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                      height: 40.0,
                      // ListView nest in Column will throw a exception:
                      // Horizontal viewport was given unbounded height.
                      // to avoid this you can use a Container with height to wrap the marquee widget
                      child: MarqueeContinuous(
                          child: Container(
                            padding: EdgeInsets.all(8.0),
                            // add padding to separate
                            child: Text('this is a short but continous shown text.'),
                          ))),
                  MarqueeSingle(child: Text('this is a short text')),
                  MarqueeSingle(
                      child: Container(
                          color: Colors.green,
                          child: Text('this is a short text with long width'),
                          width: double.maxFinite)),
                  Container(
                      height: 100.0,
                      child: MarqueeContinuous(child: FlutterLogo(size: 100.0))),
                  MarqueeSingle(child: FlutterLogo(size: 100.0)),
                  Container(
                      height: 100.0,
                      child: MarqueeContinuous(
                          child: Row(children: <Widget>[
                            FlutterLogo(size: 100.0),
                            Text('text with image')
                          ]))),
                  MarqueeSingle(
                      child: Row(children: <Widget>[
                        FlutterLogo(size: 100.0),
                        Text('text with image')
                      ]))
                ])));
  }
}