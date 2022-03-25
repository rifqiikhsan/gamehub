import 'package:flutter/material.dart';
import 'admin.dart';

class AddGame extends StatelessWidget {
  const AddGame({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff111111),
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Add Game',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Color(0xffFFC908),
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 26,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: TextFormField(
              style: TextStyle(color: Colors.white,fontSize: 20,
                    fontWeight: FontWeight.w500,),
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
                isDense: true,                      // Added this
                contentPadding: EdgeInsets.all(12),  //
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: TextFormField(
              style: TextStyle(color: Colors.white,fontSize: 20,
                    fontWeight: FontWeight.w500,),
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
                isDense: true,                      // Added this
                contentPadding: EdgeInsets.all(12),  //
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: TextFormField(
              style: TextStyle(color: Colors.white,fontSize: 20,
                    fontWeight: FontWeight.w500,),
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
                isDense: true,                      // Added this
                contentPadding: EdgeInsets.all(12),  //
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: TextFormField(
              textAlign: TextAlign.start,
              style: TextStyle(color: Colors.white,fontSize: 20,
                    fontWeight: FontWeight.w500,),
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
                contentPadding: EdgeInsets.only(bottom: 80,left: 15),  //
              ),
            ),
          ),
        ],
      ),
    );
  }
}
