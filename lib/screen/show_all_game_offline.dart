import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'detail_game_user.dart';

class AllGameOffline extends StatelessWidget {
   AllGameOffline({ Key? key }) : super(key: key);
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
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: StreamBuilder<QuerySnapshot>(
            stream: ref.snapshots(),
            builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
              if(!snapshot.hasData){
                return Center(child: Text(("loading"),),);
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
                                  image: NetworkImage(snapshot.data!.docs[index]
                                        ['imgurl']
                                        .toString(),),
                                  fit: BoxFit.cover,
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
                          builder: (context) => DetailGameOnlineUser(
                            deskripsi: snapshot.data!.docs[index]['deskripsi'],
                              tumbnail1: snapshot.data!.docs[index]['tumbnail1'],
                              tumbnail2: snapshot.data!.docs[index]['tumbnail2'],
                              review: snapshot.data!.docs[index]['review'],
                              urlplaystore: snapshot.data!.docs[index]['urlplaystore'],
                              size: snapshot.data!.docs[index]['size'],
                              nama: snapshot.data!.docs[index]['nama'],
                          ),
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