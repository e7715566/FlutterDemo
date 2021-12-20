import 'package:flutter/material.dart';

import 'custom_price_silder.dart';

class CustomSlider extends StatefulWidget {
  @override
  _CustomSliderState createState() => _CustomSliderState();
}

class _CustomSliderState extends State<CustomSlider> {
  double _sliderValue = 100.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CustomSlider'),
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Slider(
                value: _sliderValue,
                onChanged: (data){
                  print('change:$data');
                  setState(() {
                    this._sliderValue = data;
                  });
                },
                onChangeStart: (data){
                  print('start:$data');
                },
                onChangeEnd: (data){
                  print('end:$data');
                },
                min: 0.0,
                max: 100.0,
                divisions: 10,
                label: '$_sliderValue',
                activeColor: Colors.green,
                inactiveColor: Colors.grey,
                semanticFormatterCallback: (double newValue) {
                  return '${newValue.round()} dollars}';
                },
              ),
              Slider1(),
              CustomPriceSlider(),
            ]
        ),
      ),
    );

  }
}

class Slider1 extends StatefulWidget {
  const Slider1({
    Key key,
  }) : super(key: key);

  @override
  _Slider1State createState() => _Slider1State();
}

class _Slider1State extends State<Slider1> {
  double _value =100;
  @override
  Widget build(BuildContext context) {
    return SliderTheme(
      data: SliderTheme.of(context).copyWith(
        showValueIndicator: ShowValueIndicator.always,//氣泡顯示形式
        activeTrackColor: Colors.red[700],
        inactiveTrackColor: Colors.red[100],
        trackShape: RoundedRectSliderTrackShape(),
        trackHeight: 4.0,
        thumbShape: RoundSliderThumbShape(enabledThumbRadius: 12.0),
        thumbColor: Colors.redAccent,
        overlayColor: Colors.red.withAlpha(32),
        overlayShape: RoundSliderOverlayShape(overlayRadius: 28.0),
        tickMarkShape: RoundSliderTickMarkShape(),
        activeTickMarkColor: Colors.red[700],
        inactiveTickMarkColor: Colors.red[100],
        valueIndicatorShape: PaddleSliderValueIndicatorShape(),
        valueIndicatorColor: Colors.redAccent,
        valueIndicatorTextStyle: TextStyle(
          color: Colors.white,
        ),


      ),
      child: Slider(
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
      ),
    );
  }
}
