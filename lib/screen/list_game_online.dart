import 'package:flutter/material.dart';
import 'detail_gameonline_user.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:gamehub/main.dart';

class ListGameOnline extends StatelessWidget {
  final ref = FirebaseFirestore.instance.collection('gameonline');

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: SingleChildScrollView(
        child: StreamBuilder<QuerySnapshot<Object?>>(
              stream: ref.snapshots(),
              builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
                snapshot.hasData ? snapshot.data?.docs.length : 0;

                return SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(snapshot.data!.docs.length, (index) => Container(
                      margin: EdgeInsets.only(right: 15),
                      child: GestureDetector(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
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
                                height: 4,
                              ),
                              Text(
                                snapshot.data!.docs[index]
                                        ['nama']
                                        .toString(),
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white),
                              ),
                              Row(
                                children: [
                                  Image.asset('assets/icon/Star.png'),
                                  SizedBox(
                                    width: 3,
                                  ),
                                  Text(
                                    snapshot.data!.docs[index]
                                        ['rating']
                                        .toString(),
                                    style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white),
                                  ),
                                  SizedBox(
                                    width: 55,
                                  ),
                                  Text(
                                    snapshot.data!.docs[index]
                                        ['size']
                                        .toString(),
                                    style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white),
                                  ),
                                ],
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
                    ),),
                  ),
                );
              },
            ),
      ),
    );
  }
}

// class GameOnline extends StatelessWidget {
//   final String name;
//   final String icon;
//   final String rating;
//   final String size;
//   const GameOnline({ Key? key,
//   required this.name,
//   required this.icon,
//   required this.rating,
//   required this.size,
//    }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Container(
//                           width: 116,
//                           height: 109,
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(10),
//                             color: Colors.white,
//                             image: DecorationImage(
//                               image:
//                                   AssetImage('assets/images/$icon'),
//                               fit: BoxFit.fitHeight,
//                             ),
//                           ),
//                         ),
//                         SizedBox(
//                           height: 4,
//                         ),
//                         Text(
//                           name,
//                           style: TextStyle(
//                               fontSize: 12,
//                               fontWeight: FontWeight.w600,
//                               color: Colors.white),
//                         ),
//                         Row(
//                           children: [
//                             Image.asset('assets/icon/Star.png'),
//                             SizedBox(
//                               width: 3,
//                             ),
//                             Text(
//                               rating,
//                               style: TextStyle(
//                                   fontSize: 10,
//                                   fontWeight: FontWeight.w600,
//                                   color: Colors.white),
//                             ),
//                             SizedBox(
//                               width: 55,
//                             ),
//                             Text(
//                               size,
//                               style: TextStyle(
//                                   fontSize: 10,
//                                   fontWeight: FontWeight.w500,
//                                   color: Colors.white),
//                             ),
//                           ],
//                         ),
                        
//                       ],
//                     );
//   }
// }