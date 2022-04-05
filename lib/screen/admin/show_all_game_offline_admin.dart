import 'package:flutter/material.dart';
import 'package:gamehub/screen/admin/add_game_offline.dart';
import 'package:gamehub/screen/admin/add_game_online.dart';
import 'detail_gameonline_admin.dart';
import 'add_game_online.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class AllGameOfflineAdmin extends StatelessWidget {
   AllGameOfflineAdmin({ Key? key }) : super(key: key);
final ref = FirebaseFirestore.instance.collection('gameoffline');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff111111),
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Games Offline',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Color(0xffFFC908),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xffFFC908),
        child: Icon(
          Icons.add,
          color: Color(0xff111111),
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => AddGameOffline(),
            ),
          );
        },
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: StreamBuilder<QuerySnapshot<Object?>>(
            stream: ref.snapshots(),
            builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
              snapshot.hasData ? snapshot.data?.docs.length : 0;
              return Column(
                children: List.generate(
                  snapshot.data!.docs.length,
                  (index) => GestureDetector(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 25,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 25),
                              width: 116,
                              height: 109,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                                image: DecorationImage(
                                  image: NetworkImage(snapshot.data!.docs[index]
                                        ['imgurl']
                                        .toString(),),
                                  fit: BoxFit.fitHeight,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 18,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  snapshot.data!.docs[index]
                                        ['nama']
                                        .toString(),
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white),
                                ),
                                SizedBox(
                                  height: 12,
                                ),
                                Row(
                                  children: [
                                    Image.asset('assets/icon/Star-besar.png'),
                                    Text(
                                      snapshot.data!.docs[index]
                                        ['rating']
                                        .toString(),
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.white),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 40,
                                ),
                                Text(
                                  snapshot.data!.docs[index]
                                        ['size']
                                        .toString(),
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailGameOnlineAdmin(),
                        ),
                      );
                    },
                  ),
                ),
              );
            }),
      ),
    );
  }
}