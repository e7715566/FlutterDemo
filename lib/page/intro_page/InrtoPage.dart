import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


//頁面DEMO
class IntroPage extends StatefulWidget {
  const IntroPage({Key key}) : super(key: key);

  @override
  _IntroPageState createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[SliverAppBar(
            expandedHeight: 230.0,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('頁面DEMO'),
              background: Image.network(
                'https://test-napi.idoloves.com/file/origin/1626141687243-760672263/1626141687243-760672263.jpg',
                fit: BoxFit.cover,
              ),
            ),
          )];
        },
        body: ListView.builder(itemBuilder: (BuildContext context,int index){
          return Container(
            height: 80,
            color: Colors.primaries[index % Colors.primaries.length],
            alignment: Alignment.center,
            child: Text(
              '$index',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          );
        },itemCount: 20,),
      ),
    );
  }
}
