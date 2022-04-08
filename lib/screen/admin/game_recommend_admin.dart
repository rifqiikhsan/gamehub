import 'package:flutter/material.dart';
import 'detail_game_admin.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class GameRecommend extends StatefulWidget {
  GameRecommend({Key? key}) : super(key: key);

  @override
  State<GameRecommend> createState() => _GameRecommendState();
}

class _GameRecommendState extends State<GameRecommend> {
  final ref = FirebaseFirestore.instance.collection('gameonline');

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 25),
          child: Row(
            children: [
              Text(
                'Recommended',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  color: Color(0xffFFC908),
                ),
                textAlign: TextAlign.left,
              ),
             
              
            ],
          ),
        ),
        SizedBox(
          height: 16,
        ),
        StreamBuilder<QuerySnapshot>(
            stream: ref.snapshots(),
            builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
              if (!snapshot.hasData) {
                return Center(
                  child: Text(
                    ("loading"),
                  ),
                );
              }

              return SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                    children: List.generate(
                  snapshot.data!.docs.length,
                  (index) => GestureDetector(
                    onTap: (){
                      Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailGameOnlineAdmin(
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
                    child: Column(
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
                              image: NetworkImage(
                                snapshot.data!.docs[index]['tumbnail1']
                                    .toString(),
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          width: 395,
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
                                snapshot.data!.docs[index]['nama'].toString(),
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black),
                              ),
                              SizedBox(width: 230),
                              Row(
                                children: [
                                  Image.asset('assets/icon/Star.png'),
                                  SizedBox(
                                    width: 3,
                                  ),
                                  Text(
                                    snapshot.data!.docs[index]['rating']
                                        .toString(),
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black),
                                  ),
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
                  ),
                )

                    // SizedBox(
                    //   width: 25,
                    // ),

                    ),
              );
            }),
      ],
    );
  }
}
