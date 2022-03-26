import 'package:flutter/material.dart';
import 'home.dart';

class GameOnline extends StatelessWidget {
  final String name;
  final String icon;
  final String rating;
  final String size;
  const GameOnline({ Key? key,
  required this.name,
  required this.icon,
  required this.rating,
  required this.size,
   }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 116,
                          height: 109,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            image: DecorationImage(
                              image:
                                  AssetImage('assets/images/$icon'),
                              fit: BoxFit.fitHeight,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          name,
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
                              rating,
                              style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white),
                            ),
                            SizedBox(
                              width: 55,
                            ),
                            Text(
                              size,
                              style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                        
                      ],
                    );
  }
}