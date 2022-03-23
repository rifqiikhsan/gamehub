import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff111111),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 25.0, top: 11),
                  
                  width: 325,
                  height: 45,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: Color(0xffFFC908),
                      width: 2,
                    ),
                    image: DecorationImage(
                      image: AssetImage('assets/icon/search.png'),
                      alignment: Alignment.centerLeft,
                    ),
                  ),
                ),
                SizedBox(
                  width: 17,
                ),
                Row(
                  children: [
                    Image.asset(
                      'assets/icon/about.png',
                      width: 38,
                      height: 38,
                      alignment: Alignment.bottomCenter,
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Column(
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
                Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          width: 370,
                          height: 219,
                          margin: EdgeInsets.symmetric(horizontal: 25),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                            image: DecorationImage(
                              image: AssetImage('assets/images/image 1.png'),
                              fit: BoxFit.fitHeight,
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SizedBox(
                              width: 16,
                            ),
                            Text('Mobile Legends',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w600,color: Colors.white),)
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
