import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Top extends StatefulWidget {
  const Top({Key? key}) : super(key: key);

  @override
  State<Top> createState() => _TopState();
}

class _TopState extends State<Top> {
  List item = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11];

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            top: 20.0,
            left: 17.0,
            bottom: 14.0,
          ),
          child: Row(
            children: [
              Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: const SizedBox(
                    height: 200,
                    width: 180,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            top: 16.0,
                            left: 10.0,
                            bottom: 5.0,
                          ),
                          child: Text('대량',
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              )),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10.0),
                          child: Text('호텔, 회사', style: TextStyle(fontSize: 17)),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10.0),
                          child: Text('문제 없습니다.', style: TextStyle(fontSize: 17)),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 100.0,
                            top: 10.0,
                          ),
                          child: Icon(
                            Icons.delivery_dining,
                            size: 70,
                          ),
                        ),
                      ],
                    ),
                  )),
              Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: const SizedBox(
                    height: 200,
                    width: 180,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            top: 16.0,
                            left: 10.0,
                            bottom: 5.0,
                          ),
                          child: Text('소량',
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              )),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10.0),
                          child:
                              Text('1인 가구도', style: TextStyle(fontSize: 17)),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10.0),
                          child: Text('부담 없이',
                              style: TextStyle(fontSize: 17)),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 120.0,
                            top: 10.0,
                          ),
                          child: Icon(
                            Icons.shopping_basket_rounded ,
                            size: 60,
                          ),
                        ),
                      ],
                    ),
                  )),
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Padding(
                  padding: const EdgeInsets.only(left: 8.0, bottom: 17),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: const InkWell(
                      onTap: _launchURL,
                      child: SizedBox(
                        width: 120.0,
                        height: 100.0,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.search,
                              size: 40,
                              color: Colors.blue,
                            ),
                            Text('검색',
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                ))
                          ],
                        ),
                      ),
                    ),
                  )),
              Padding(
                  padding: const EdgeInsets.only(left: 8.0, bottom: 17),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: const SizedBox(
                      width: 120.0,
                      height: 100.0,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.auto_awesome_outlined,
                            size: 40,
                            color: Colors.blue,
                          ),
                          Text('수선',
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                              ))
                        ],
                      ),
                    ),
                  )),
             Padding(
                  padding: const EdgeInsets.only(left: 8.0, bottom: 17),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: const InkWell(
                      onTap: _launchURL2,
                      child: SizedBox(
                        width: 120.0,
                        height: 100.0,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.account_circle_rounded,
                              size: 40,
                              color: Colors.blue,
                            ),
                            Text('계정',
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                ))
                          ],
                        ),
                      ),
                    ),
                  )),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: CarouselSlider(
            items: item.map((i) {
              return Builder(
                builder: (BuildContext context) {
                  return Stack(
                    children: [
                      GestureDetector(
                        onTap: () {}, // 화면 이동
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.asset(
                            'asset/img/image${i}.png',
                            fit: BoxFit.cover,
                            width: MediaQuery.of(context).size.width,
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 12.0,
                        right: 10.0,
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Opacity(
                              opacity: 0.5,
                              child: Container(
                                  color: Colors.black,
                                  width: 60.0,
                                  height: 30.0,
                                  child: Center(
                                    child: Text('${i} / 11',
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        )),
                                  )),
                            )),
                      )
                    ],
                  );
                },
              );
            }).toList(),
            options: CarouselOptions(
              viewportFraction: 1,
              autoPlay: true, //자동재생 여부
              height: 130.0,
            ),
          ),
        ),
      ],
    ));
  }
}

_launchURL() async {
  Uri _url = Uri.parse('http://10.0.2.2:8080/store/search');
  if (await launchUrl(_url)) {
    await launchUrl(_url);
  } else {
    throw 'Could not launch $_url';
  }
}

_launchURL2() async {
  Uri _url2 = Uri.parse('http://10.0.2.2:8080/myPage');
  if (await launchUrl(_url2)) {
    await launchUrl(_url2);
  } else {
    throw 'Could not launch $_url2';
  }
}