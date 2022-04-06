import 'package:flutter/material.dart';
import 'detail_gameonline_user.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class GameRecommend extends StatefulWidget {
  GameRecommend({Key? key}) : super(key: key);

  @override
  State<GameRecommend> createState() => _GameRecommendState();
}

class _GameRecommendState extends State<GameRecommend> {
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  @override
  Widget build(BuildContext context) {
    return Column(
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
        StreamBuilder<DocumentSnapshot>(
            stream: firestore
                .collection('gameonline')
                .doc('30D66WMG3dputFZk0Bdm')
                .snapshots(),
            builder: (context, snapshot) {
              if (!snapshot.hasData) {
                  return const Center(
                    child: Text(
                      'Data tidak ada ...',
                    ),
                  );
                }

              return SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: GestureDetector(
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
                                image: NetworkImage(
                                  snapshot.data!.get('tumbnail1').toString(),
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
                                  snapshot.data!.get('nama').toString(),
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
                                      snapshot.data!.get('rating').toString(),
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
                      SizedBox(
                        width: 25,
                      ),
                    ],
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailGameOnlineUser(),
                      ),
                    );
                  },
                ),
              );
            }),
      ],
    );
  }
}
