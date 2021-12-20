import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class IntroPageDate extends StatefulWidget {
  const IntroPageDate({Key key}) : super(key: key);

  @override
  _IntroPageDateState createState() => _IntroPageDateState();
}

class _IntroPageDateState extends State<IntroPageDate> {
  String imgUrl =
      'https://test-napi.idoloves.com/file/origin/1626141687243-760672263/1626141687243-760672263.jpg';
  List<String> imgList = [
    "asset/images/1140982.jpg",
    "asset/images/one.jpg",
    "asset/images/messag2e_2.png"
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1F0F24),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //頭像，背景，帳號，三圍等
            topWidget(context),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '性情率直、真誠、活潑、好聊天。喜愛唱歌、繪畫、欣賞驚悚恐怖片。熱食偏愛辣❤️不挑食，偶而自行下廚烹飪等等都很熱愛。喜歡運動健身，平常沒事看看書、外出走走散散心。',
                    style: const TextStyle(
                        color: Colors.white, fontSize: 14.0, height: 1.4),
                    softWrap: true,
                  ),
                  buildGridView(context),
                  WrapWidget(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildGridView(BuildContext context) {
    return imgList != null && imgList.length != 0
        ? GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: imgList.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, crossAxisSpacing: 6.0, childAspectRatio: 1),
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Image.asset(
                    imgList[index],
                    fit: BoxFit.cover,
                  ),
                ),
                onTap: () {
                  showDialog(
                    barrierColor: Color(0xff1F0F24).withOpacity(.8),
                    context: context,
                    builder: (ctx) {
                      return Center(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 12.0, vertical: 70),
                          child: Swiper(
                            index: index,
                            // viewportFraction: 0.8,
                            scale: 0.9,
                            control: CustomSwiperControl(),
                            autoplay: false,
                            itemBuilder: (BuildContext context, int index) {
                              return Center(
                                child: Stack(
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.symmetric(
                                          horizontal: 18.0, vertical: 18.0),
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Colors.white, width: 5)),
                                      child: Image.asset(
                                        imgList[index],
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                    Positioned(
                                        top: 0,
                                        right: 0,
                                        child: GestureDetector(
                                          child: Image.asset(
                                            'asset/images/btn_close_cross.png',
                                            height: 35,
                                            width: 35,
                                          ),
                                          onTap: () {
                                            Navigator.pop(context);
                                          },
                                        ))
                                  ],
                                ),
                              );
                            },
                            itemCount: imgList.length,
                          ),
                        ),
                      );
                    },
                  );
                  print('點到');
                },
              );
            },
          )
        : Container();
  }

  Stack topWidget(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 320,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(imgUrl),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          top: 20.0,
          left: 15,
          child: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
              size: 30,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        Positioned(
          bottom: 0,
          right: 0,
          child: Container(
            height: 107,
            width: MediaQuery.of(context).size.width - 121,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    topRight: Radius.circular(30.0)),
                gradient: LinearGradient(
                  colors: [
                    Color(0xffFF91BD),
                    Color(0xffFFB3BF),
                  ],
                  begin: Alignment.topRight,
                )),
            child: Padding(
              padding: const EdgeInsets.only(left: 28.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '今晚來個啪啪啪喔 ',
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 14,
                        height: 2,
                        color: Colors.white),
                  ),
                  Text(
                    '@zhenyihui',
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        height: 1,
                        color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          child: Container(
            height: 60,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0)),
              color: Color(0xff1F0F24),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 121.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 5.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '160 / 47 / 獅子座 / O型 ',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              height: 1.4,
                              color: Colors.white),
                        ),
                        Text(
                          '33D / 24 / 33 ',
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 14,
                              height: 1.2,
                              color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    child: Container(
                      margin: const EdgeInsets.all(6),
                      width: 40,
                      height: 40,
                      child: Image.asset(
                        "asset/images/chat_1_btn.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          left: 36,
          bottom: 13,
          child: GestureDetector(
            onTap: () {},
            child: Container(
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                  border: Border.all(color: Colors.white, width: 1)),
              child: CircleAvatar(
                backgroundColor: Colors.white,
                backgroundImage: NetworkImage(imgUrl),
                radius: 39,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class WrapWidget extends StatefulWidget {
  const WrapWidget({
    Key key,
  }) : super(key: key);

  @override
  _WrapWidgetState createState() => _WrapWidgetState();
}

class _WrapWidgetState extends State<WrapWidget> {
  List<String> rantTimeList = [];
  List<String> rantAreaList = ['全台', '南部'];
  List<String> rantCosplayList = ['私聊自訂', '男女朋友', '兄弟姐妹', '朋友同學'];
  List<String> rantAcceptList = ['私聊自訂', '吃飯聊天', '旅遊逛街'];
  List<String> rantClothesList = ['私聊自訂'];

  @override
  Widget build(BuildContext context) {
    print('------------');
    print(rantTimeList);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        buildWrap('可約會時間', rantTimeList),
        buildWrap('可約會地區', rantAreaList),
        buildWrap('扮演身份', rantCosplayList),
        buildWrap('接受程度', rantAcceptList),
        buildWrap('服飾穿著', rantClothesList),
      ],
    );
  }

  Widget buildWrap(String listTitle, List<String> rantList) {
    return rantList !=[] && rantList.length != 0
        ? Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 23.0, bottom: 8),
                child: Text(
                  listTitle,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                      height: 1.4,
                      fontWeight: FontWeight.w700),
                  softWrap: true,
                ),
              ),
              Wrap(
                spacing: 10,
                runSpacing: 12,
                children: List.generate(rantList.length, (index) {
                  return Container(
                    height: 30,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '${rantList[index]}',
                            style: const TextStyle(
                                fontStyle: FontStyle.normal,
                                color: Colors.black,
                                fontSize: 16.0,
                                height: 1,
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(15.0)),
                    ),
                  );
                }).toList(),
              ),
            ],
          )
        : Container();
  }
}

class CustomSwiperControl extends SwiperPlugin {
  final double size;
  final EdgeInsetsGeometry padding;
  final Key key;

  const CustomSwiperControl(
      {this.key, this.size: 30.0, this.padding: const EdgeInsets.all(25.0)});

  Widget buildButton(
      SwiperPluginConfig config, String img, int quarterTurns, bool previous) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        if (previous) {
          config.controller.previous(animation: true);
        } else {
          config.controller.next(animation: true);
        }
      },
      child: Padding(
          padding: padding,
          child: RotatedBox(
            quarterTurns: quarterTurns,
            child: Image.asset(
              img,
              height: size,
              width: size,
            ),
          )),
    );
  }

  @override
  Widget build(BuildContext context, SwiperPluginConfig config) {
    Widget child;
    if (config.scrollDirection == Axis.horizontal) {
      child = Row(
        key: key,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          buildButton(config, 'asset/images/btn-left.png', 0, true),
          buildButton(config, 'asset/images/btn-right.png', 0, false)
        ],
      );
    } else {
      child = Column(
        key: key,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          buildButton(config, 'asset/images/btn-left.png', 0, true),
          buildButton(config, 'asset/images/btn-right.png', 0, false)
        ],
      );
    }

    return Container(
      height: double.infinity,
      child: child,
      width: double.infinity,
    );
  }
}
