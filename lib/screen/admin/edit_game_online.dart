import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:gamehub/screen/admin/admin.dart';
import 'package:gamehub/screen/admin/show_all_game_online_admin.dart';
import 'detail_game_admin.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'detail_game_admin.dart';

class EditGameOnline extends StatefulWidget {
  
  DocumentSnapshot docToEdit ;
EditGameOnline({required this.docToEdit});
  @override
  State<EditGameOnline> createState() => _EditGameState();
}

class _EditGameState extends State<EditGameOnline> {               

 TextEditingController nama = TextEditingController();
 TextEditingController rating = TextEditingController();
 TextEditingController size = TextEditingController();
 TextEditingController urlplaystore = TextEditingController();
 TextEditingController imgurl = TextEditingController();
 TextEditingController tumbnail1 = TextEditingController();
 TextEditingController tumbnail2 = TextEditingController();
 TextEditingController deskripsi = TextEditingController();
 TextEditingController review = TextEditingController();

@override
  void initState() {
    nama = TextEditingController(text: widget.docToEdit.get('nama'));
    rating = TextEditingController(text: widget.docToEdit.get('rating'));
    size = TextEditingController(text: widget.docToEdit.get('size'));
    urlplaystore = TextEditingController(text: widget.docToEdit.get('urlplaystore'));
    imgurl = TextEditingController(text: widget.docToEdit.get('imgurl'));
    tumbnail1 = TextEditingController(text: widget.docToEdit.get('tumbnail1'));
    tumbnail2 = TextEditingController(text: widget.docToEdit.get('tumbnail2'));
    deskripsi = TextEditingController(text: widget.docToEdit.get('deskripsi'));
    review = TextEditingController(text: widget.docToEdit.get('review'));
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff111111),
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Edit Game',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Color(0xffFFC908),
          ),
        ),
        actions: [
          IconButton(
                             padding: EdgeInsets.only(right: 25.0),
                              onPressed: () {
                                showDialog(
                                  context: context,
                                  builder: (context) => AlertDialog(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    title: Text(
                                      "Hapus Game",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xffFFC908),
                                      ),
                                    ),
                                    content: Text(
                                      "Yakin ingin menghapus daftar game ini?",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white,
                                      ),
                                    ),
                                    actions: [
                                      ElevatedButton(
                                        style: ButtonStyle(
                                          backgroundColor:
                                              MaterialStateProperty.all<Color>(
                                            Color(0xffFFC908),
                                          ),
                                        ),
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                        child: Text(
                                          "Tidak",
                                          style: TextStyle(color: Colors.black),
                                        ),
                                      ),
                                      ElevatedButton(
                                        style: ButtonStyle(
                                          backgroundColor:
                                              MaterialStateProperty.all<Color>(
                                            Color(0xffFFC908),
                                          ),
                                        ),
                                        onPressed: () {
                                          widget.docToEdit.reference
                                              .delete()
                                              .whenComplete(() {
                                            Navigator.pushReplacement(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (_) =>
                                                        AllGameOnlineAdmin()));
                                          });
                                        },
                                        child: Text(
                                          "Ya",
                                          style: TextStyle(color: Colors.black),
                                        ),
                                      ),
                                    ],
                                    backgroundColor: Colors.black,
                                  ),
                                );
                              },
                              icon: Icon(
                                Icons.delete,
                                size: 30,
                                color: Color(0xffFFC908),
                              ),
                            ),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SizedBox(
              height: 26,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: TextFormField(
                controller: nama,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
                decoration: InputDecoration(
                  hintText: 'Application Name',
                  hintStyle: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Color(0xffAFAFAF)),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(
                      color: Color(0xffFFC908),
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(
                      color: Color(0xffFFC908),
                      width: 1.0,
                    ),
                  ),
                  isDense: true,
                  contentPadding: EdgeInsets.all(12),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: TextFormField(
                controller: rating,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
                decoration: InputDecoration(
                  hintText: 'Rating',
                  hintStyle: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Color(0xffAFAFAF)),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(
                      color: Color(0xffFFC908),
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(
                      color: Color(0xffFFC908),
                      width: 1.0,
                    ),
                  ),
                  isDense: true, // Added this
                  contentPadding: EdgeInsets.all(12), //
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: TextFormField(
                controller: size,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
                decoration: InputDecoration(
                  hintText: 'Size',
                  hintStyle: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Color(0xffAFAFAF)),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(
                      color: Color(0xffFFC908),
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(
                      color: Color(0xffFFC908),
                      width: 1.0,
                    ),
                  ),
                  isDense: true,
                  contentPadding: EdgeInsets.all(12),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: TextFormField(
                controller: deskripsi,
                maxLines: 3,
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
                decoration: InputDecoration(
                  hintText: 'Description',
                  hintStyle: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Color(0xffAFAFAF)),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(
                      color: Color(0xffFFC908),
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(
                      color: Color(0xffFFC908),
                      width: 1.0,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 14,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: TextFormField(
                controller: review,
                maxLines: 3,
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
                decoration: InputDecoration(
                  hintText: 'Review',
                  hintStyle: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Color(0xffAFAFAF)),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(
                      color: Color(0xffFFC908),
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(
                      color: Color(0xffFFC908),
                      width: 1.0,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: TextFormField(
                controller: urlplaystore,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
                decoration: InputDecoration(
                  hintText: 'Link Playstore',
                  hintStyle: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Color(0xffAFAFAF)),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(
                      color: Color(0xffFFC908),
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(
                      color: Color(0xffFFC908),
                      width: 1.0,
                    ),
                  ),
                  isDense: true,
                  contentPadding: EdgeInsets.all(12),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: TextFormField(
                controller: imgurl,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
                decoration: InputDecoration(
                  hintText: 'Link icon',
                  hintStyle: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Color(0xffAFAFAF)),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(
                      color: Color(0xffFFC908),
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(
                      color: Color(0xffFFC908),
                      width: 1.0,
                    ),
                  ),
                  isDense: true,
                  contentPadding: EdgeInsets.all(12),
                ),
              ),
            ),
         SizedBox(
           height: 15,
         ),
         Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: TextFormField(
                controller: tumbnail1,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
                decoration: InputDecoration(
                  hintText: 'Link tumbnail 1',
                  hintStyle: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Color(0xffAFAFAF)),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(
                      color: Color(0xffFFC908),
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(
                      color: Color(0xffFFC908),
                      width: 1.0,
                    ),
                  ),
                  isDense: true,
                  contentPadding: EdgeInsets.all(12),
                ),
              ),
            ),
               SizedBox(
                 height: 15,
               ),

               Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: TextFormField(
                controller: tumbnail2,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
                decoration: InputDecoration(
                  hintText: 'Link tumbnail 2',
                  hintStyle: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Color(0xffAFAFAF)),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(
                      color: Color(0xffFFC908),
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(
                      color: Color(0xffFFC908),
                      width: 1.0,
                    ),
                  ),
                  isDense: true,
                  contentPadding: EdgeInsets.all(12),
                ),
              ),
            ),
               SizedBox(
                 height: 25,
               ),
 
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 25),
                  width: 395,
                  height: 45,
                  decoration: BoxDecoration(
                    color: Color(0xffFFC908),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: ElevatedButton(
                    
                    onPressed: () {
                      if (kDebugMode) {
                      widget.docToEdit.reference.update({
                          'nama':nama.text,
                          'rating':rating.text,
                          'size':size.text,
                          'deskripsi':deskripsi.text,
                          'review':review.text,
                          'urlplaystore':urlplaystore.text,
                          'imgurl':imgurl.text,
                          'tumbnail1':tumbnail1.text,
                          'tumbnail2':tumbnail2.text,
                        }).whenComplete((){
                            Navigator.pushReplacement(
                              context, MaterialPageRoute(builder: (_) => AllGameOnlineAdmin()));
                        });
                      }
                    },
                    child: Text(
                      'Save',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xffFFC908),
                    ),
                  ),
                ),
              
          ],
        ),
      ),
    );
  }
}
