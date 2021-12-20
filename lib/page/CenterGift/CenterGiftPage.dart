import 'package:flutter/material.dart';
import 'package:luca_demo/Widget/TapButton.dart';

import 'CenterGift.dart';

class CenterGiftPage extends StatefulWidget {
  @override
  _CenterGiftPageState createState() => _CenterGiftPageState();
}

class _CenterGiftPageState extends State<CenterGiftPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("TextOverflowDemo")),
        body: Container(
          child: Stack(
            children: [
              Positioned.fill(
                child: Container(
                  color: Colors.white,
                  child: Column(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        TapButton(text: '加入一個全圖禮', onTapFunction: () {
                          CenterGift.centerGiftKey.currentState.addCenterGiftList(CenterGiftModel(nickname: 'Luca',imgUrl: '',msg: '會動的月餅'));
                        }),
                      ]),
                ),
              ),
              CenterGift(),
            ],
          ),
        ));
  }
}
