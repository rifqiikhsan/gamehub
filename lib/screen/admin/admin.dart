import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:gamehub/screen/admin/detail_game_admin.dart';
import 'list_game_offline_admin.dart';
import 'add_game_online.dart';
import 'login.dart';
import 'package:gamehub/main.dart';
import '../home.dart';
import 'list_game_online_admin.dart';
import 'show_all_game_offline_admin.dart';
import 'show_all_game_online_admin.dart';
import 'game_recommend_admin.dart';

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
        title: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            'Halaman Home Admin',
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.w600,
              color: Color(0xffFFC908),
            ),
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
              //game recommend admin
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
