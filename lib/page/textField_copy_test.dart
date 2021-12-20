import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextFieldCopyTest extends StatefulWidget {
  const TextFieldCopyTest({Key key}) : super(key: key);

  @override
  _TextFieldCopyTestState createState() => _TextFieldCopyTestState();
}

class _TextFieldCopyTestState extends State<TextFieldCopyTest> {
  TextEditingController controller1;
  TextEditingController controller2;
  TextEditingController controller3;
  TextEditingController controller4;
  TextEditingController controller5;
  TextEditingController controller6;
  TextEditingController controller7;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff281E36),
      appBar: AppBar(
        title: Text('TextFieldCopyTest'),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment:
                CrossAxisAlignment
                    .end,
                children: [
                  Container(
                    height:
                    30,
                    width:
                    MediaQuery.of(context).size.width * 0.15,
                    child:
                    TextField(
                      textAlign:
                      TextAlign.center,
                      autofocus:
                      false,
                      //鍵盤輸入樣式 數字
                      keyboardType:
                      TextInputType.number,
                      maxLength:
                      4,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14.0,
                          height: 1),
                      controller:
                      controller1,
                      decoration:
                      InputDecoration(
                        counterText: '',
                        hintText: 'YYYY',
                        hintStyle: const TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                          height: 1,
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  Text(
                    '  年  ',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14.0,
                        height: 1),
                  ),
                ],
              ),
              SizedBox(height: 50,),
              Container(
                width: 265,
                height: 40,
                child: Center(
                  child: TextField(
                    style: TextStyle(color: Colors.white, height: 1, fontSize: 14),
                    controller: controller2,
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      isDense: true,
                      hintText: '輸入帳號',
                      counterText: '',
                      hintStyle: TextStyle(color: Colors.white, height: 1),
                      //底線
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                    ),
                    // inputFormatters: [
                    //   FilteringTextInputFormatter.allow(RegExp('[a-zA-Z]|[0-9]'))
                    // ],
                  ),
                ),
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(.5),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              SizedBox(height: 100,),
              Container(
                child:
                TextField(
                  style:
                  const TextStyle(
                    color: Colors
                        .white,
                    fontSize:
                    14,
                    height: 1,
                  ),
                  controller:
                  controller4,
                  maxLength:
                  10,
                  keyboardType:
                  TextInputType
                      .emailAddress,
                  decoration: InputDecoration(
                      isDense: true,
                      focusColor: Colors.white,
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.white,
                            width: 1),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.lightBlue,
                            width: 1),
                      ),
                      hintText: '輸入好友邀請碼領獎勵',
                      hintStyle: const TextStyle(
                        color:
                        Colors.grey,
                        fontSize:
                        14,
                        height:
                        1,
                      ),
                      //限制數量文本
                      counterText: ''),
                  //限制輸入語言
                  // inputFormatters: [
                  //   FilteringTextInputFormatter
                  //       .allow(
                  //       RegExp('[a-zA-Z]|[0-9]'))
                  // ],
                ),
              ),
              SizedBox(height: 50,),
              Text('下面這樣寫會不能複製',style: TextStyle(height: 1.2,fontSize: 14,color: Colors.white),),
              Container(
                height: 20,
                child:
                TextField(
                  style:
                  const TextStyle(
                    color: Colors
                        .white,
                    fontSize:
                    14,
                    height: 1,
                  ),
                  controller:
                  controller3,
                  autofocus:
                  false,
                  maxLength:
                  10,
                  keyboardType:
                  TextInputType
                      .emailAddress,
                  decoration: InputDecoration(
                      focusColor: Colors.white,
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.white,
                            width: 1),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.lightBlue,
                            width: 1),
                      ),
                      hintText: '輸入好友邀請碼領獎勵',
                      hintStyle: const TextStyle(
                        color:
                        Colors.grey,
                        fontSize:
                        14,
                        height:
                        1,
                      ),
                      //限制數量文本
                      counterText: ''),
                  //限制輸入語言
                  // inputFormatters: [
                  //   FilteringTextInputFormatter
                  //       .allow(
                  //       RegExp('[a-zA-Z]|[0-9]'))
                  // ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}

