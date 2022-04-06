import 'package:flutter/material.dart';
import 'package:gamehub/screen/admin/add_game_offline.dart';
import 'package:gamehub/screen/admin/add_game_online.dart';
import 'package:gamehub/screen/admin/edit_game_offline.dart';
import 'admin.dart';
import 'detail_gameoffline_admin.dart';
import 'detail_gameonline_admin.dart';
import 'add_game_online.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class AllGameOfflineAdmin extends StatefulWidget {
   AllGameOfflineAdmin({ Key? key }) : super(key: key);

  @override
  State<AllGameOfflineAdmin> createState() => _AllGameOfflineAdminState();
}

class _AllGameOfflineAdminState extends State<AllGameOfflineAdmin> {
final ref = FirebaseFirestore.instance.collection('gameoffline');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff111111),
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => AdminPage(),
            ),
          );
        }, icon: Icon(Icons.arrow_back)),
        automaticallyImplyLeading: false,
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
              if (!snapshot.hasData) {
                return Center(
                  child: Text(
                    ("loading"),
                  ),
                );
              }
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
                                  image: NetworkImage(
                                    snapshot.data!.docs[index]['imgurl']
                                        .toString(),
                                  ),
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
                                  snapshot.data!.docs[index]['nama'].toString(),
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
                                      snapshot.data!.docs[index]['rating']
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
                                  snapshot.data!.docs[index]['size'].toString(),
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                            Padding(
                              padding:  EdgeInsets.only(left: 96.0),
                              child: Container(
                                width: 40,
                                height: 40,
                                decoration:BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color:Color(0xffFFC908) ,
                                ),
                                child: IconButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => EditGameOffline(
                                          docToEdit: snapshot.data!.docs[index],
                                        ),
                                      ),
                                    );
                                  },
                                  icon: Icon(
                                    Icons.edit,
                                    size: 25,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 25,
                            ),
                          ],
                        ),
                      ],
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailGameOfflineAdmin(),
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
