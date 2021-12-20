import 'dart:async';

import 'package:flutter/material.dart';


class CenterGiftModel {
  const CenterGiftModel( {
    this.imgUrl,
    this.msg = '',
    this.nickname,
  });

  final String nickname;
  final String msg;
  final String imgUrl;
}
    // .{code: 200, success: true, data: {nickname: lulucaca, imgUrl:*大禮禮物URL, text: *禮物名, diamond:*禮物價格, live_log_id: 12, type: 5}, message: ok}
class CenterGift extends StatefulWidget {
  static GlobalKey<_CenterGiftState> centerGiftKey = GlobalKey();

  CenterGift({Key key}) : super(key: centerGiftKey);

  @override
  _CenterGiftState createState() => _CenterGiftState();
}



class _CenterGiftState extends State<CenterGift> {
  List<CenterGiftModel> centerGiftList = [];
  Timer _timer;

  void cancelTimer() {
    if (_timer != null) {
      _timer.cancel();
      _timer = null;
    }
  }

  addCenterGiftList(CenterGiftModel gift) {
    centerGiftList.add(gift);
    if (_timer == null) {
      start();
    }
    this.setState(() {});
  }

  start() {
    const period = const Duration(seconds: 3);
    if (_timer == null && centerGiftList.length != 0) {
      _timer = Timer.periodic(period, (timer) {
        centerGiftList.removeAt(0);
        this.setState(() {});
        if (centerGiftList.length <= 0) {
          //取消定時器，避免無限回撥
          cancelTimer();
        }
      });
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    centerGiftList = [];
  }

  @override
  void dispose() {
    cancelTimer();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return centerGiftList.length == 0
        ? Container()
        : Positioned(
      bottom: 100,
      child: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xff4D3164).withOpacity(.3),
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                  ),
                  width: 200,
                  height: 60,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        centerGiftList[0].nickname,
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                            fontSize: 20,
                            height: 1.4),
                      ),
                      Text(
                        '贈送 ${centerGiftList[0].msg} ',
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                            fontSize: 16,
                            height: 1.4),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 48.0,right: 30.0,left: 30.0),
            child: Container(
              width: MediaQuery.of(context).size.width-60,
              height: MediaQuery.of(context).size.width-60,
              child: Image.asset(
                'asset/images/anim-moon.webp',
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
