import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:gamehub/screen/admin/detail_gameonline_admin.dart';
import 'list_game_offline_admin.dart';
import 'add_game_online.dart';
import 'login.dart';
import 'package:gamehub/main.dart';
import '../home.dart';
import 'list_game_online_admin.dart';
import 'show_all_game_offline_admin.dart';
import 'show_all_game_online_admin.dart';

class AdminPage extends StatelessWidget {
  const AdminPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff111111),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () => FirebaseAuth.instance.signOut(),
            icon: Icon(
              Icons.logout,
              size: 25,
              color: Color(0xffFFC908),
            ),
          ),
        ],
        backgroundColor: Colors.black,
        title: Text(
          'Halaman Home Admin',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w600,
            color: Color(0xffFFC908),
          ),
        ),
      ),
      
      body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 11,
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
                        onTap:(){
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => AllGameOnlineAdmin(),
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

              ListGameOnlineAdmin(),
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
                                builder: (context) => AllGameOfflineAdmin(),
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

              ListGameOfflineAdmin(),
            ],
          ),
      ),
    );
  }
}
