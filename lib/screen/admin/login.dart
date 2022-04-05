import 'package:flutter/material.dart';
import '../about.dart';
import 'admin.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
final emailController = TextEditingController();
final passwordController = TextEditingController();

@override
void dispose(){
  emailController.dispose();
  passwordController.dispose();

  super.dispose();
}
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, login) {
      if(login.hasData){
        return AdminPage();
      }
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
                            controller: emailController,
                            style: TextStyle(color: Colors.white, fontSize: 18),
                            decoration: InputDecoration(
                              hintText: 'Email',
                              hintStyle: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: Color(0xff767676),
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide: BorderSide(
                                  color: Color(0xffFFC908),
                                ),
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
                            controller: passwordController,
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
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide: BorderSide(
                                  color: Color(0xffFFC908),
                                ),
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
                            onPressed: signIn,
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
    );
  }
  Future signIn() async {
        await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: emailController.text.trim(),
           password: passwordController.text.trim()
           );
      }
}

