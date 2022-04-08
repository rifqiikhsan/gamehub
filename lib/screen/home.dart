import 'package:flutter/material.dart';
import 'package:gamehub/screen/game_recommend.dart';
import 'package:gamehub/screen/show_all_game_offline.dart';
import 'list_game_online.dart';
import 'about.dart';
import 'list_game_offline.dart';
import 'detail_game_user.dart';
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
              //game recommended
              GameRecommend(),
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
