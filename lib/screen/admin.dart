import 'package:flutter/material.dart';
import 'addgame.dart';
import 'list_game.dart';
import 'login.dart';
import 'package:gamehub/main.dart';
import 'home.dart';

class AdminPage extends StatelessWidget {
  const AdminPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff111111),
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Admin',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Color(0xffFFC908),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xffFFC908),
        child: Icon(
          Icons.add,
          color: Color(0xff111111),
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => AddGame(),
            ),
          );
        },
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            ListGame(
              judul: 'Sausage Man',
              icon: 'sausage-icon.png',
              rating: '4.0',
              size: '1.1GB',
            ),
            ListGame(
              judul: 'Mobile Legends',
              icon: 'ml-icon.png',
              rating: '4.1',
              size: '132MB',
            ),
            ListGame(
              judul: 'PUBG MOBILE',
              icon: 'pubg-icon.png',
              rating: '4.0',
              size: '730MB',
            ),
            ListGame(
              judul: 'Minecraft',
              icon: 'minecraft-icon.png',
              rating: '4.6',
              size: '138MB',
            ),
            ListGame(
              judul: 'Ludo King',
              icon: 'ludo-icon.png',
              rating: '4.2',
              size: '57MB',
            ),
            ListGame(
              judul: 'Helix Jump',
              icon: 'helik-icon.png',
              rating: '4.2',
              size: '92MB',
            ),
            ListGame(
              judul: 'Helix Jump',
              icon: 'helik-icon.png',
              rating: '4.2',
              size: '92MB',
            ),
          ],
        ),
      ),
    );
  }
}
