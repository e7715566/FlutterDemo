import 'package:flutter_seekbar/flutter_seekbar.dart' show ProgressValue, SectionTextModel, SeekBar;
import 'package:flutter/material.dart';

import 'customSeekBar.dart';




class SeekBarDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SeekBarDemoState();
  }
}

class _SeekBarDemoState extends State<SeekBarDemo> with SingleTickerProviderStateMixin {
  List<SectionTextModel> sectionTexts = [];

  @override
  void initState() {
    super.initState();
    sectionTexts.add(
        SectionTextModel(position: 0, text: 'bad', progressColor: Colors.red));
    sectionTexts.add(SectionTextModel(
        position: 2, text: 'good', progressColor: Colors.yellow));
    sectionTexts.add(SectionTextModel(
        position: 4, text: 'great', progressColor: Colors.green));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SeekBar'),
      ),
      body: SingleChildScrollView(
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 40, 0, 40),
                  child: Column(
                    children: <Widget>[
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Container(
                              margin: EdgeInsets.fromLTRB(10, 0, 10, 4),
                              width: 330,
                              child: CustomSeekBar(
                                  progresseight: 2,
                                  value: 1,
                                  min: 0,
                                  max: 5000,
                                  // indicatorColor:Colors.amber,
                                  indicatorRadius: 10.0,
                                  progressColor:const Color(0xffFD6071),
                                  backgroundColor:const  Color(0xFFABABAB),
                                  sectionColor:Colors.red,
                                  hideBubble: false,
                                  alwaysShowBubble: true,
                                  bubbleRadius: 5,
                                  bubbleColor: Colors.transparent,
                                  bubbleTextColor: Colors.black,
                                  bubbleTextSize: 14,
                                  bubbleMargin: 0,
                                  // bubbleInCenter: true,
                                  onValueChanged: (v) {
                                    print(
                                        '当前进度：${v.progress} ，当前的取值：${v.value}');
                                  })),
                        ],
                      ),
                      Text(
                        "自訂義泡泡",
                        style: TextStyle(fontSize: 10),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 40, 0, 40),
                  child: Column(
                    children: <Widget>[
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Container(
                              margin: EdgeInsets.fromLTRB(10, 0, 10, 4),
                              width: 200,
                              child: SeekBar(
                                  progresseight: 5,
                                  value: 1,
                                  min: 0,
                                  max: 100,
                                  indicatorColor:Colors.amber,
                                  progressColor:const Color(0xffFD6071),
                                  backgroundColor:const  Color(0xFFABABAB),
                                  sectionColor:Colors.red,
                                  hideBubble: false,
                                  alwaysShowBubble: true,
                                  bubbleRadius: 14,
                                  // bubbleColor: Colors.red,
                                  bubbleTextColor: Colors.black,
                                  bubbleTextSize: 14,
                                  bubbleMargin: -16,
                                  // bubbleInCenter: true,
                                  onValueChanged: (v) {
                                    print(
                                        '当前进度：${v.progress} ，当前的取值：${v.value}');
                                  })),
                        ],
                      ),
                      Text(
                        "改顏色泡泡上方永顯",
                        style: TextStyle(fontSize: 10),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 0,40),
                  child: Column(
                    children: <Widget>[
                      Container(
                          padding: EdgeInsets.fromLTRB(0, 0, 0, 6),
                          width: 200,
                          child: SeekBar(
                            progresseight: 5,
                            value: 0.2,
                          )),
                      Text(
                        "圆角带指示器",
                        style: TextStyle(fontSize: 10),
                      ),
                    ],
                  ),
                ),
                Column(
                  children: <Widget>[
                    Container(
                        width: 200,
                        child: SeekBar(
                          progresseight: 10,
                          indicatorRadius: 0.0,
                          value: 0.2,
                          isRound: false,
                        )),
                    Text(
                      "直角",
                      style: TextStyle(fontSize: 10),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 40, 0, 0),
                  child: Column(
                    children: <Widget>[
                      Container(
                          width: 200,
                          child: SeekBar(
                              indicatorRadius: 0.0,
                              progresseight: 5,
                              value: 0.6,
                              hideBubble: false,
                              alwaysShowBubble: true,
                              bubbleRadius: 14,
                              bubbleColor: Colors.purple,
                              bubbleTextColor: Colors.white,
                              bubbleTextSize: 14,
                              bubbleMargin: 4,
                              bubbleInCenter: true)),
                      Text(
                        "圆角，气泡居中，始终显示气泡",
                        style: TextStyle(fontSize: 10),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 40, 0, 0),
                  child: Column(
                    children: <Widget>[
                      Container(
                          padding: EdgeInsets.fromLTRB(0, 0, 0, 6),
                          width: 200,
                          child: SeekBar(
                            progresseight: 5,
                            value: 0.5,
                            sectionCount: 5,
                          )),
                      Text(
                        "带间隔带指示器",
                        style: TextStyle(fontSize: 10),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 40, 0, 0),
                  child: Column(
                    children: <Widget>[
                      Container(
                          padding: EdgeInsets.fromLTRB(0, 0, 0, 6),
                          width: 200,
                          child: SeekBar(
                            progresseight: 5,
                            value: 0.5,
                            sectionCount: 4,
                            sectionRadius: 6,
                            sectionColor: Colors.red,
                          )),
                      Text(
                        "带间隔画间隔的指示器",
                        style: TextStyle(fontSize: 10),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 40, 0, 0),
                  child: Column(
                    children: <Widget>[
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Text('-10'),
                          Container(
                              margin: EdgeInsets.fromLTRB(10, 0, 10, 4),
                              width: 200,
                              child: SeekBar(
                                  progresseight: 5,
                                  value: 0.5,
                                  min: -10,
                                  max: 80,
                                  sectionCount: 4,
                                  sectionRadius: 6,
                                  sectionColor: Colors.red,
                                  hideBubble: false,
                                  alwaysShowBubble: true,
                                  bubbleRadius: 14,
                                  bubbleColor: Colors.purple,
                                  bubbleTextColor: Colors.white,
                                  bubbleTextSize: 14,
                                  bubbleMargin: 4,
                                  onValueChanged: (v) {
                                    print(
                                        '当前进度：${v.progress} ，当前的取值：${v.value}');
                                  })),
                          Text('80')
                        ],
                      ),
                      Text(
                        "带间隔带气泡的指示器，气泡",
                        style: TextStyle(fontSize: 10),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 40, 0, 0),
                  child: Column(
                    children: <Widget>[
                      Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 0, 40),
                          width: 200,
                          child: SeekBar(
                            progresseight: 10,
                            value: 0.5,
                            sectionCount: 4,
                            sectionRadius: 5,
                            sectionColor: Colors.red,
                            sectionUnSelecteColor: Colors.red[100],
                            showSectionText: true,
                            sectionTextMarginTop: 2,
                            sectionDecimal: 0,
                            sectionTextColor: Colors.black,
                            sectionSelectTextColor: Colors.red,
                            sectionTextSize: 14,
                          )),
                      Text(
                        "带带刻度的指示器,可设置刻度的样式和选中的刻度的样式",
                        style: TextStyle(fontSize: 10),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 40, 0, 0),
                  child: Column(
                    children: <Widget>[
                      Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 0, 40),
                          width: 200,
                          child: SeekBar(
                            progresseight: 10,
                            value: 0.5,
                            sectionCount: 4,
                            sectionRadius: 5,
                            sectionColor: Colors.red,
                            sectionUnSelecteColor: Colors.red[100],
                            showSectionText: true,
                            sectionTextMarginTop: 2,
                            sectionDecimal: 0,
                            sectionTextColor: Colors.black,
                            sectionSelectTextColor: Colors.red,
                            sectionTextSize: 14,
                            hideBubble: false,
                            bubbleRadius: 14,
                            bubbleColor: Colors.purple,
                            bubbleTextColor: Colors.white,
                            bubbleTextSize: 14,
                            bubbleMargin: 4,
                            afterDragShowSectionText: true,
                          )),
                      Text(
                        "带带刻度的指示器,可设置刻度的样式和选中的刻度的样式，拖拽结束显示刻度值，拖拽开始显示气泡",
                        style: TextStyle(fontSize: 10),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 40, 0, 0),
                  child: Column(
                    children: <Widget>[
                      Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 0, 40),
                          width: 200,
                          child: SeekBar(
                            min: -100,
                            max: 200,
                            progresseight: 10,
                            value: 0.75,
                            sectionCount: 4,
                            sectionRadius: 6,
                            showSectionText: true,
                            sectionTexts: [],
                            sectionTextMarginTop: 2,
                            sectionDecimal: 0,
                            sectionTextColor: Colors.black,
                            sectionSelectTextColor: Colors.red,
                            sectionTextSize: 14,
                            hideBubble: false,
                            bubbleRadius: 14,
                            bubbleColor: Colors.purple,
                            bubbleTextColor: Colors.white,
                            bubbleTextSize: 14,
                            bubbleMargin: 4,
                            afterDragShowSectionText: true,
                          )),
                      Text(
                        "自定义刻度值显示，带带刻度的指示器,可设置刻度的样式和选中的刻度的样式，拖拽结束显示刻度值，拖拽开始显示气泡",
                        style: TextStyle(fontSize: 10),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 40, 0, 0),
                  child: Column(
                    children: <Widget>[
                      Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 0, 40),
                          width: 200,
                          child: SeekBar(
                            progresseight: 10,
                            value: 0.75,
                            sectionCount: 4,
                            sectionRadius: 6,
                            showSectionText: true,
                            sectionTexts: sectionTexts,
                            sectionTextMarginTop: 2,
                            sectionDecimal: 0,
                            sectionTextColor: Colors.black,
                            sectionSelectTextColor: Colors.red,
                            sectionTextSize: 14,
                            hideBubble: false,
                            bubbleRadius: 14,
                            bubbleColor: Colors.purple,
                            bubbleTextColor: Colors.white,
                            bubbleTextSize: 14,
                            bubbleMargin: 4,
                            afterDragShowSectionText: true,
                          )),
                      Text(
                        "自定义刻度值显示，带带刻度的指示器,可设置刻度的样式和选中的刻度的样式，拖拽结束显示刻度值，拖拽开始显示气泡",
                        style: TextStyle(fontSize: 10),
                      )
                    ],
                  ),
                ),
              ],
            )),
      ),
    );

  }
}