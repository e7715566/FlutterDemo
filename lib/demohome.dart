import 'package:flutter/material.dart';
import 'package:luca_demo/page/CenterGift/CenterGiftPage.dart';
import 'package:luca_demo/page/bottom_sheet/BottomSheet.dart';
import 'package:luca_demo/page/custom_slider/CustomSlider.dart';
import 'package:luca_demo/page/intro_page/InrtoPage.dart';
import 'package:luca_demo/page/intro_page/InrtoPageDate.dart';
import 'package:luca_demo/page/ios_web_image.dart';
import 'package:luca_demo/page/marquee/marquee_page.dart';
import 'package:luca_demo/page/seekbar/SeekBar.dart';
import 'package:luca_demo/page/Text_over_flow.dart';
import 'package:luca_demo/page/textField_copy_test.dart';


import 'page/TextPaint.dart';
import 'page/base64.dart';
import 'page/inkwell.dart';

class LucaDemoHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LucaDemo List'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Wrap(
              direction:
              Axis.horizontal,
              spacing: 10,
              runSpacing: 10,
              children: <Widget>[
                TapButton(text: 'web 輸入框複製測試',push: TextFieldCopyTest(),),
                TapButton(text: '圖片測試',push: IosWebImage(),),
                TapButton(text: '日租頁面測試',push: IntroPageDate(),),
                TapButton(text: '介紹頁設計',push: IntroPage(),),
                TapButton(text: 'base64 轉圖片',push: base64toimage(),),
                TapButton(text: '文字邊框',push: TextPaint(),),
                TapButton(text: '水波紋按鈕',push: inkwell(),),
                TapButton(text: '底部彈窗',push: BottomSheetDemo(),),
                TapButton(text: '拉霸1',push: CustomSlider(),),
                TapButton(text: '拉霸2',push: SeekBarDemo(),),
                TapButton(text: '跑馬燈',push: MarqueePage(),),
                TapButton(text: '字體是否超出判斷',push: TextOverflowDemo(),),
                TapButton(text: '全圖動畫',push: CenterGiftPage(),),
                TapButton(text: '禮物動畫',push: TextOverflowDemo(),),
              ]
          ),
        ),
      ),
    );

  }
}

class TapButton extends StatelessWidget {
  final String text;
  final Widget push;
  TapButton({Key key, this.text, this.push}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: GestureDetector(
          child: Container(
            height: 40,
            width: 150,
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                Color(0xffFD6071),
                Color(0xffFCB131),
              ]),
              borderRadius: BorderRadius.all(
                  Radius.circular(30.0)),
            ),
            child: Center(
                child: Text(
                  text,
                  style: const TextStyle(
                      color: Colors.black,),
                )),
          ),
          onTap: ()  {
            Navigator.push(context,
                        MaterialPageRoute(builder: (context) => push));
          }),
    );
  }
}
