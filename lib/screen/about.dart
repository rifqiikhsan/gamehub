import 'package:flutter/material.dart';
import 'home.dart';
import 'admin/login.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:url_launcher/url_launcher.dart';



class AboutMe extends StatelessWidget {

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
        child:SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 72,
                    ),
                    GestureDetector(
                      child: Image.asset('assets/images/about-profil.png'),
                      onDoubleTap: () {
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
                      RaisedButton(
                        color: Colors.transparent,
                        child: Image.asset('assets/icon/WhatsApp.png'),
                        onPressed: () {
                          _launchWhatsapp(6289629814773, 'Hallo Admin....');
                        }
                      ),
                      RaisedButton(
                        color: Colors.transparent,
                        child: Image.asset('assets/icon/Facebook.png'),
                        onPressed: () {
                          _launchFacebook();
                        }
                      ),
                      RaisedButton(
                        color: Colors.transparent,
                        child: Image.asset('assets/icon/Github.png'),
                        onPressed: () {
                          _launchGithub();
                        }
                      ),
                      RaisedButton(
                        color: Colors.transparent,
                        child: Image.asset('assets/icon/ig.png'),
                        onPressed: () {
                          _launchInstagram();
                        }
                      ),  
                    ],
                  ),
                  ],
                ),
              ),
      ),
    );
  }

  
}





Future<void> _launchWhatsapp(int phone, String message) async {
 final url = 'https://wa.me/$phone?text=${Uri.parse(message)}';
 if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

Future<void> _launchFacebook() async {
 final url = 'https://www.facebook.com/rifqi.ikhsan.589';
 if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

Future<void> _launchGithub() async {
 final url = 'https://github.com/rifqiikhsan';
 if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

Future<void> _launchInstagram() async {
 final url = 'https://www.instagram.com/rifqiikhsan19_/';
 if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

