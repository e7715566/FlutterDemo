import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class BlockReport extends StatelessWidget {
  const BlockReport({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        height: 181,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xCC4D3164),
                  borderRadius:
                  BorderRadius.all(Radius.circular(15.0)),
                ),
                height: 110,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        print('封鎖');
                      },
                      child: Text(
                        '封鎖',
                        style: TextStyle(
                            color: Colors.white, fontSize: 20),
                      ),
                    ),
                    Divider(
                      color: Colors.grey,
                    ),
                    GestureDetector(
                      onTap: () {
                        print('檢舉');
                      },
                      child: Text(
                        '檢舉',
                        style: TextStyle(
                            color: Colors.white, fontSize: 20),
                      ),
                    )
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xCC4D3164),
                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                  ),
                  height: 56,
                  child: Center(
                    child: Text(
                      '取消',
                      style: TextStyle(
                          color: Colors.white, fontSize: 20),
                    ),
                  )
              ),
            ),
          ],
        ),
      ),
    );
  }
}