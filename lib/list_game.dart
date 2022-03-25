import 'package:flutter/material.dart';
import 'admin.dart';

class ListGame extends StatelessWidget {
  final String judul;
  final String icon;
  final String rating;
  final String size;

  const ListGame({ Key? key,
  required this.judul,
  required this.icon,
  required this.rating,
  required this.size,
   }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
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
                    image: AssetImage('assets/images/$icon'),
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
                    judul,
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
                        rating,
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
                        size,
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
    );
  }
}