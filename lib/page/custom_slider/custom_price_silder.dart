import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'custom_thumb.dart';

class CustomPriceSlider extends StatefulWidget {
  final Widget slider;

  const CustomPriceSlider({
    Key key,
    this.slider,
  }) : super(key: key);

  @override
  _CustomPriceSliderState createState() => _CustomPriceSliderState();
}

class _CustomPriceSliderState extends State<CustomPriceSlider> {
  double _value =100;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40.0,left: 20,right: 20),
      child: Container(
        width: MediaQuery.of(context).size.width,
        child: SliderTheme(
            data: SliderTheme.of(context).copyWith(
              //圈圈外圍顏色
              overlayColor: const Color(0xFFFFFFFF),
              //滑動過的區域的顏色
              activeTrackColor: const Color(0xffFD6071),
              //未滑動過的區域的顏色
              inactiveTrackColor: const Color(0xFFABABAB),
              // 左刻度顏色
              activeTickMarkColor:const Color(0xffFD6071),
              //右刻度顏色
              // inactiveTickMarkColor:const Color(0x8cFFFFFF),
              //不可用左顏色
              // disabledActiveTickMarkColor: const Color(0x8cFFFFFF),
              //不可用右顏色
              // disabledInactiveTickMarkColor: const Color(0x8cFFFFFF),
              //滑塊中心的颜色
              // thumbColor: const Color(0xFFFF8040),
              //氣泡顏色
              // valueIndicatorColor: const Color(0x00FFFFFF),
              //圓圈外圈大小
              overlayShape: RoundSliderOverlayShape(
                //可继承SliderComponentShape自定义形状
                overlayRadius: 0,
              ),

              thumbShape: RetroSliderThumbShape(),
              //继承SliderTickMarkShape可自定义刻度形状
              // tickMarkShape: RoundSliderTickMarkShape(tickMarkRadius: 0.0, //刻度大小),
              showValueIndicator: ShowValueIndicator.always,//氣泡顯示形式
              //氣泡形狀
              // valueIndicatorShape: PaddleSliderValueIndicatorShape(),
              //氣泡TextStyle
              // valueIndicatorTextStyle: TextStyle(color: Colors.black),
              //寬度
              trackHeight: 2.0,
            ),
            child:Slider(
              value: _value,
              min: 0,
              max: 100,
              divisions: 10,
              label: '$_value',
              onChanged: (value) {
                setState(
                      () {
                    _value = value;
                  },
                );
              },
            ),),
      ),
    );
  }
}

