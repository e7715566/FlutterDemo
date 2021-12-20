import 'package:flutter/material.dart';

class TapButton extends StatelessWidget {
  final String text;
  final Function onTapFunction;

  TapButton({Key key, this.text, this.onTapFunction}) : super(key: key);

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
              borderRadius: BorderRadius.all(Radius.circular(30.0)),
            ),
            child: Center(
                child: Text(
                  text,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                )),
          ),
          onTap: () {
            onTapFunction();
          }),
    );
  }
}