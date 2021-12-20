import 'package:flutter/material.dart';

class IosWebImage extends StatefulWidget {
  const IosWebImage({Key key}) : super(key: key);

  @override
  _IosWebImageState createState() => _IosWebImageState();
}

class _IosWebImageState extends State<IosWebImage> {
  List<String> imgList = [
    "asset/images/1140982.jpg",
    "asset/images/one.jpg",
    "asset/images/messag2e_2.png"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('IosWebImage'),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Column(
            children: [
              ClipPath(
                clipper: BezierCurve(),
                child: Container(
                  clipBehavior: Clip.antiAlias,
                  height: 231.67,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    // image: DecorationImage(
                    //   image: AssetImage(
                    //     imgList[0],
                    //   ),
                    //   fit: BoxFit.cover,
                    // ),
                  ),
                  child: ClipPath(
                      clipper: BezierCurve(),
                      child: Image.asset(
                        imgList[0],
                        fit: BoxFit.cover,
                      )),
                ),
              ),
              GridView.builder(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 5),
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: imgList.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 6.0,
                    childAspectRatio: 1),
                itemBuilder: (BuildContext context, int index) {
                  return
                      //   Container(
                      //   clipBehavior: Clip.hardEdge,
                      //   decoration: BoxDecoration(
                      //     image: DecorationImage(
                      //       image: AssetImage(
                      //         imgList[index],
                      //       ),
                      //       fit: BoxFit.cover,
                      //     ),
                      //     borderRadius: BorderRadius.all(Radius.circular(30)),
                      //     color: Colors.deepPurple,
                      //   ),
                      // );

                      ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Image.asset(
                      imgList[index],
                      fit: BoxFit.cover,
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BezierCurve extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height - 20.0); // 第2個點
    var firstControlPoint =
        Offset(size.width / 4 * 0.9, size.height + 20); // 第一段曲線控制點
    var firstEdnPoint = Offset(size.width / 2, size.height - 35.0); // 第一段曲線結束點
    path.quadraticBezierTo(
        // 形成曲線
        firstControlPoint.dx,
        firstControlPoint.dy,
        firstEdnPoint.dx,
        firstEdnPoint.dy);

    var secondControlPoint =
        Offset(size.width / 4 * 3.15, size.height - 80); // 第二段曲線控制點
    var secondEndPoint = Offset(size.width, size.height - 40); // 第二段曲線結束點
    path.quadraticBezierTo(
        // 形成曲線
        secondControlPoint.dx,
        secondControlPoint.dy,
        secondEndPoint.dx,
        secondEndPoint.dy);

    path.lineTo(size.width, 0); // 第4個點

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
