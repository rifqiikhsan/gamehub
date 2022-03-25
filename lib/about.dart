import 'package:flutter/material.dart';
import 'home.dart';
import 'login.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff111111),
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'About Developer',
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: Color(0xffFFC908)),
        ),
      ),
      body: Container(
        width: 500,
        height: 390,
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(40),
            bottomRight: Radius.circular(40),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 72,
            ),
            GestureDetector(
              child: Image.asset('assets/images/about-profil.png'),
              onDoubleTap: (){
                Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginPage(),
                        ),
                     );
              },
            ),
            SizedBox(
              height: 19,
            ),
            Text(
              'Rifqi Ikhsan Rizkillah',
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  color: Colors.white),
            ),
            Text(
              'SMKN 1 Subang',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.white),
            ),
            SizedBox(
              height: 29,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/icon/WhatsApp.png'),
                Image.asset('assets/icon/Facebook.png'),
                Image.asset('assets/icon/Github.png'),
                Image.asset('assets/icon/ig.png'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
