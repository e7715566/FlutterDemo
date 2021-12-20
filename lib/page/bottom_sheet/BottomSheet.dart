import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:luca_demo/Widget/TapButton.dart';

import 'BlockReport.dart';
import 'BottomPicker.dart';


//底部彈窗
class BottomSheetDemo extends StatefulWidget {
  BottomSheetDemo({Key key}) : super(key: key);

  @override
  _BottomSheetDemoState createState() => _BottomSheetDemoState();
}

class _BottomSheetDemoState extends State<BottomSheetDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BottomSheetDemo'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                TapButton(
                    text: '封鎖彈窗',
                    onTapFunction: () {
                      BottomSheet(context,BlockReport());
                    }),
                TapButton(
                    text: '選擇彈窗',
                    onTapFunction: () {
                      BottomSheet(context,BottomPicker());
                    }),
              ]),
        ),
      ),
    );
  }

  void BottomSheet(
    context,widget
  ) {
    showModalBottomSheet(
        backgroundColor: Colors.transparent,
        barrierColor: Color(0xB2000000),
        context: context,
        isScrollControlled: true,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        builder: (BuildContext context) {
          return BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
            child: Container(
              child: widget,
            ),
          );
        });
  }
}







