import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class inkwell extends StatefulWidget {
  inkwell({Key key,}) : super(key: key);
  @override
  _inkwellState createState() => _inkwellState();
}

class _inkwellState extends State<inkwell> {

  bool selected = false;
  @override
  Widget build(BuildContext context) {
    Color highlightColor = Colors.blue ;
    Color splashColor = Colors.red ;
    Color highlightColor2 = Colors.blue ;
    Color splashColor2 = Colors.red ;

    return Scaffold(
      appBar: AppBar(
        title: Text('inkwell'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              InkWell(
                onTap: () {
                  print('點選了');
                },
                child: ListTile(
                  title: Text('InkWell的子元件是ListTile'),
                  trailing: Icon(Icons.chevron_right),
                ),
              ),
              Divider(),
              InkWell(
                onTap: () {
                  print('點選了');
                },
                highlightColor: Colors.blue,
                autofocus: true,
                child: Text('InkWell的子元件是Text'),
              ),
              Divider(),
              Ink(
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Color(0xffFD6071),
                      Color(0xffFCB131),
                    ]),
                    borderRadius: BorderRadius.all(Radius.circular(50.0))),
                child: InkWell(
                  onTap: () {
                    print('必須要繫結事件，不然沒效果');
                  },
                  // highlightColor: Colors.blue,
                  borderRadius: BorderRadius.all(Radius.circular(50.0)),
                  splashColor: Color(0xffFD6071),
                  autofocus: true,
                  child: Container(
                    padding: EdgeInsets.all(10.0),
                    child: Container(

                      width: 200.0,
                      height: 200.0,
                      // decoration: BoxDecoration(
                      //     gradient: LinearGradient(colors: [
                      //       Color(0xffFD6071),
                      //       Color(0xffFCB131),
                      //     ]),
                      //     borderRadius: BorderRadius.all(Radius.circular(50.0))),
                      padding: EdgeInsets.all(10.0),
                      child: Text('InkWell的子元件是Container'),
                    ),
                  ),
                ),
              ),
              Divider(),
              Ink(
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Color(0xffFD6071),
                      Color(0xffFCB131),
                    ]),
                    borderRadius: BorderRadius.all(Radius.circular(50.0))),
                child: InkWell(
                  onTap: () {
                    print('必須要繫結事件，不然沒效果');
                  },

                  borderRadius: BorderRadius.all(Radius.circular(50.0)),
                  splashColor: splashColor,
                  autofocus: true,
                  child: Container(
                    padding: EdgeInsets.all(10.0),
                    child: Container(
                      height: 40,
                      width: 150,
                      padding: EdgeInsets.all(10.0),
                      child: Text('InkWell 2'),
                    ),
                  ),
                ),
              ),
              Divider(),
              Ink(
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Color(0xffff3c3c),
                      Color(0xffFf6071),
                    ]),
                    borderRadius: BorderRadius.all(Radius.circular(50.0))),
                child: InkWell(
                  onTap: () {
                    print('必須要繫結事件，不然沒效果');
                  },
                  // highlightColor: Colors.blue,
                  borderRadius: BorderRadius.all(Radius.circular(50.0)),
                  splashColor: splashColor2,
                  autofocus: true,
                  child: Container(
                    padding: EdgeInsets.all(10.0),
                    child: Container(
                      height: 40,
                      width: 150,
                      padding: EdgeInsets.all(10.0),
                      child: Text('InkWell 1 close'),
                    ),
                  ),
                ),
              ),
              Divider(),
              Ink(
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Color(0xffFD6071),
                      Color(0xffFCB131),
                    ]),
                    borderRadius: BorderRadius.all(Radius.circular(50.0))),
                child: InkWell(
                  onTap: () {
                    print('必須要繫結事件，不然沒效果');
                  },
                  // highlightColor: Colors.blue,
                  borderRadius: BorderRadius.all(Radius.circular(50.0)),
//               splashColor: Color(0xffFD6071),
                  highlightColor:highlightColor,
                  autofocus: true,
                  child: Container(
                    padding: EdgeInsets.all(10.0),
                    child: Container(
                      height: 40,
                      width: 150,
                      padding: EdgeInsets.all(10.0),
                      child: Text('InkWell 2'),
                    ),
                  ),
                ),
              ),
              Divider(),
              Ink(
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Color(0xffff3c3c),
                      Color(0xffFf6071),
                    ]),
                    borderRadius: BorderRadius.all(Radius.circular(50.0))),
                child: InkWell(
                  onTap: () {
                    print('必須要繫結事件，不然沒效果');
                  },
                  // highlightColor: Colors.blue,
                  borderRadius: BorderRadius.all(Radius.circular(50.0)),
//               splashColor: Color(0xffFD6071),
                  highlightColor:highlightColor2,
                  autofocus: true,
                  child: Container(
                    padding: EdgeInsets.all(10.0),
                    child: Container(
                      height: 40,
                      width: 150,
                      padding: EdgeInsets.all(10.0),
                      child: Text('InkWell 2 close'),
                    ),
                  ),
                ),
              ),

              Divider(),
              Text('變大變小'),
              Ink(
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Color(0xffff3c3c),
                      Color(0xffFf6071),
                    ]),
                    borderRadius: BorderRadius.all(Radius.circular(50.0))),
                child:InkWell(
                  onTap: () {
                    setState(() {
                      selected = !selected;
                    });
                    print('必須要繫結事件，不然沒效果');
                  },
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 500),
                    height: selected ? 50.0 : 40.0,
                    width: selected ? 100.0 : 80.0,
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(
                            Radius.circular(30.0) //
                        ),
                        gradient: LinearGradient(
                            colors: [
                              Color(0xffFD6071),
                              Color(0xffFCB131),
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight)),
                    child: Center(
                      child: Text(
                        '確定',
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          height: 1,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
