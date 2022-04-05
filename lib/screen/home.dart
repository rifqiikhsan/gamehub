import 'package:flutter/material.dart';
import 'package:gamehub/screen/show_all_game_offline.dart';
import 'list_game_online.dart';
import 'about.dart';
import 'list_game_offline.dart';
import 'detail_gameonline_user.dart';
import 'show_all_game_online.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff111111),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 11,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 25,
                  ),
                  Expanded(
                    child: Container(
                      height: 45,
                      child: TextField(
                        style:TextStyle(color: Colors.white,fontSize: 20),
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.search,color: Colors.white,),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide: BorderSide(
                          color: Color(0xffFFC908),
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide: BorderSide(
                          color: Color(0xffFFC908),
                          width: 1.0,
                        ),
                      ),
                                  ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 17,
                  ),
                  GestureDetector(
                    child: Image.asset(
                      'assets/icon/about.png',
                      width: 38,
                      height: 38,
                      alignment: Alignment.bottomCenter,
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AboutMe(),
                        ),
                      );
                    },
                  ),
                  SizedBox(
                    width: 25,
                  ),
                ],
              ),
              SizedBox(
                height: 35,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: Text(
                      'Recommended',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        color: Color(0xffFFC908),
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  SingleChildScrollView(
                    scrollDirection:Axis.horizontal,
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 395,
                              height: 200,
                              margin: EdgeInsets.symmetric(horizontal: 25),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20),
                                ),
                                color: Colors.white,
                                image: DecorationImage(
                                  image: AssetImage('assets/images/ml-image.png',),
                                  fit: BoxFit.fitWidth,
                                ),
                              ),
                            ),
                            Container(
                              width:395,
                              margin: EdgeInsets.only(left: 25),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(20),
                                  bottomRight: Radius.circular(20),
                                ),
                                color: Colors.white,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: 25,
                                    height: 30,
                                  ),
                                  Text(
                                    'Mobile Legends',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black),
                                  ),
                                  SizedBox(width: 210),
                                  Row(
                                    children: [
                                      Image.asset('assets/icon/Star.png'),
                                      Image.asset('assets/icon/Star.png'),
                                      Image.asset('assets/icon/Star.png'),
                                      Image.asset('assets/icon/Star.png'),
                                      Image.asset('assets/icon/star-setengah.png'),
                                      SizedBox(
                                        width: 15,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 395,
                              height: 200,
                              margin: EdgeInsets.symmetric(horizontal: 25),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20),
                                ),
                                color: Colors.white,
                                image: DecorationImage(
                                  image: AssetImage('assets/images/pubg-image.png',),
                                  fit: BoxFit.fitWidth,
                                ),
                              ),
                            ),
                            Container(
                              width:395,
                              margin: EdgeInsets.only(left: 25),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(20),
                                  bottomRight: Radius.circular(20),
                                ),
                                color: Colors.white,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: 25,
                                    height: 30,
                                  ),
                                  Text(
                                    'PUBG MOBILE',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black),
                                  ),
                                  SizedBox(width: 210),
                                  Row(
                                    children: [
                                      Image.asset('assets/icon/Star.png'),
                                      Image.asset('assets/icon/Star.png'),
                                      Image.asset('assets/icon/Star.png'),
                                      Image.asset('assets/icon/Star.png'),
                                      SizedBox(
                                        width: 15,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 25,
              ),


              Row(
                children: [
                  SizedBox(
                    width: 25,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Games Online',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Container(
                        width: 110,
                        height: 3,
                        color: Color(0xffFFC908),
                      ),
                    ],
                  ),
                  SizedBox(
                    width:220,
                  ),
                  Row(
                    children: [
                      GestureDetector(
                        child: Text(
                          'Show All',
                          style: TextStyle(
                            fontSize: 16,
                            color: Color(0xffFFC908),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        onTap:(){
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => AllGameOnline(),
                              ),
                            );
                        },
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 13,
              ),

              ListGameOnline(),
              SizedBox(
                height: 29,
              ),

              Row(
                children: [
                  SizedBox(
                    width: 25,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Games Offline',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Container(
                        width: 110,
                        height: 3,
                        color: Color(0xffFFC908),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 220,
                  ),
                  Row(
                    children: [
                      GestureDetector(
                        child: Text(
                          'Show All',
                          style: TextStyle(
                            fontSize: 16,
                            color: Color(0xffFFC908),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        onTap: (){
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => AllGameOffline(),
                              ),
                            );
                        },
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 13,
              ),

              ListGameOffline(),
            ],
          ),
        ),
      ),
    );
  }
}
