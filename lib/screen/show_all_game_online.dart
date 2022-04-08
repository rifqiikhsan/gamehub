import 'package:flutter/material.dart';
import 'package:gamehub/screen/admin/show_all_game_online_admin.dart';
import 'detail_game_user.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class AllGameOnline extends StatelessWidget {
  AllGameOnline({Key? key}) : super(key: key);
  final ref = FirebaseFirestore.instance.collection('gameonline');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff111111),
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Games Online',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Color(0xffFFC908),
          ),
        ),
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
                          ],
                        ),
                      ],
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailGameOnlineUser(deskripsi: snapshot.data!.docs[index]['deskripsi'],
                              tumbnail1: snapshot.data!.docs[index]['tumbnail1'],
                              tumbnail2: snapshot.data!.docs[index]['tumbnail2'],
                              review: snapshot.data!.docs[index]['review'],
                              urlplaystore: snapshot.data!.docs[index]['urlplaystore'],
                              size: snapshot.data!.docs[index]['size'],
                              nama: snapshot.data!.docs[index]['nama'],),
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

// class ShowAllOnline extends StatelessWidget {
//   final String judul;
//   final String icon;
//   final String rating;
//   final String size;

//   const ShowAllOnline({ Key? key,
//   required this.judul,
//   required this.icon,
//   required this.rating,
//   required this.size,
//    }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//         children: [
//           SizedBox(
//             height: 25,
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.start,
//             children: [
//               Container(
//                 margin: EdgeInsets.only(left: 25),
//                 width: 116,
//                 height: 109,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(10),
//                   color: Colors.white,
//                   image: DecorationImage(
//                     image: AssetImage('assets/images/$icon'),
//                     fit: BoxFit.fitHeight,
//                   ),
//                 ),
//               ),
//               SizedBox(
//                 width: 18,
//               ),
//               Column(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     judul,
//                     style: TextStyle(
//                         fontSize: 18,
//                         fontWeight: FontWeight.w600,
//                         color: Colors.white),
//                   ),
//                   SizedBox(
//                     height: 12,
//                   ),
//                   Row(
//                     children: [
//                       Image.asset('assets/icon/Star-besar.png'),
//                       Text(
//                         rating,
//                         style: TextStyle(
//                             fontSize: 18,
//                             fontWeight: FontWeight.w600,
//                             color: Colors.white),
//                       ),          
//                     ],
//                   ),
//                   SizedBox(
//                         height: 40,
//                       ),
//                   Text(
//                         size,
//                         style: TextStyle(
//                             fontSize: 14,
//                             fontWeight: FontWeight.w500,
//                             color: Colors.white),
//                       ),
//                 ],
//               ),
//             ],
//           ),
//         ], 
//     ),
//   }
// }