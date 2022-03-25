import 'package:flutter/material.dart';
import 'about.dart';
import 'admin.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 40,
            ),
            Image.asset('assets/images/Logo.png'),
            SizedBox(
              height: 100,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 25),
              width: 378,
              height: 58,
              decoration: BoxDecoration(
                color: Color(0xff252525),
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextField(
                style: TextStyle(color: Colors.white, fontSize: 18),
                decoration: InputDecoration(
                  hintText: 'Username',
                  hintStyle: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff767676),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 25),
              width: 378,
              height: 58,
              decoration: BoxDecoration(
                color: Color(0xff252525),
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextField(
                style: TextStyle(
                  color: Colors.white,
                ),
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Password',
                  hintStyle: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff767676),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 23,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 25),
              width: 378,
              height: 58,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Color(0xffFFC908),
                ),
              ),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AdminPage(),
                    ),
                  );
                },
                child: Text(
                  'Login',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
                style: ElevatedButton.styleFrom(primary: Colors.transparent),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
