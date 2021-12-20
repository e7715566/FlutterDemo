import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


//底部選擇器
class BottomPicker extends StatefulWidget {
  BottomPicker({Key key,})
      : super(key: key);


  @override
  _buildBottomPicker createState() => _buildBottomPicker();
}

class _buildBottomPicker extends State<BottomPicker> {
  final FixedExtentScrollController scrollController =
  FixedExtentScrollController(initialItem: 0);
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    debugPrint(' _buildBottomPicker build');
    List<String> demolist = ['1','2', '3'];
    return Container(
      height: 181,
      decoration: BoxDecoration(
        color: Color(0xCC4D3164),
        borderRadius:
        BorderRadius.only(topLeft:Radius.circular(15.0),topRight:Radius.circular(15.0)),
      ),
      // color:Color(0xCC4D3164),
      child: Column(
        children: [
          GestureDetector(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(.1),
                  borderRadius:
                  BorderRadius.only(topLeft:Radius.circular(15.0),topRight:Radius.circular(15.0) ),
                ),
                height: 35,
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 13.0),
                    child: Text(
                      '送出',
                      style: TextStyle(fontSize: 14, color: Colors.white),
                    ),
                  ),
                ),
                // color: Colors.white.withOpacity(.1),
                width: MediaQuery.of(context).size.width,
              ),
              onTap: () {
                Navigator.of(context).pop();
              },
            ),
          Container(
            height: 146,
            child: CupertinoPicker(
                scrollController: scrollController,
                itemExtent: 34,
                // backgroundColor: Color(0xCC4D3164),
                onSelectedItemChanged: (int index) {
                  _index = index;
                  print(_index);
                },
                children:
                List<Widget>.generate(demolist.length, (int index) {
                  return Center(
                    child: Text(demolist[index],style: TextStyle(fontSize: 16,color:Colors.white),),
                  );
                }),
                magnification: 1,
              ),
          ),
        ],
      ),
    );
  }
}