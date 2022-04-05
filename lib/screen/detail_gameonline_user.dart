import 'package:flutter/material.dart';
import 'package:gamehub/main.dart';
import 'package:url_launcher/url_launcher.dart';


class DetailGameOnlineUser extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff111111),
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Detail Game',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Color(0xffFFC908),
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 25,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 25),
                    width: 397,
                    height: 220,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: AssetImage('assets/images/ml-image.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 25),
                    width: 397,
                    height: 220,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: AssetImage('assets/images/ml-tumbnail.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 21,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 25,
                ),
                Text(
                  'Mobile Legends',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Color(0xffFFC908),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 11,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'merupakan game MOBA yang dirilis oleh Moontoon. Game ini bisa dimainkan di ponsel Android maupun IOS. Dalam game MOBA ini akan ada 10 pemain yang akan dibagi menjadi 2 tim. Aturan mainnya yakni 5 vs 5. Rata-rata permainan dalam 1 game yakni sekitar 15-20 menit. Setiap pemain bisa memilih 1 hero dari puluhan daftar hero yang tersedia.',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    'Game ini mudah mudah dimainkan karena sudah disediakan tutorial saat pertama kali bermain,Size game mobile legends terbilang kecil. Tidak sebesar game game MOBA yang lain yaitu kurang lebih hanya 100 megabytes. Jauh dibandingkan game serupa saat mendownload di playstore,Game Mobile Legends ini memiliki grafik yang baik dari segi karakter, map, item, efek skill dan banyak lagi. Gerakannya pun tidak kaku ketika menghajar musuh. Bisa dibilang hampir sempurna untuk sebuah game mobile, selain itu game ini juga bisa dimainkan bareng bersama teman.',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(
                    height: 26,
                  ),
                  Text(
                    'Size 132MB',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
      
            SizedBox(
              height: 7,
            ),
            Container(
                margin: EdgeInsets.symmetric(horizontal: 25),
                width: 395,
                height: 49,
                decoration: BoxDecoration(
                  color: Color(0xffFFC908),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: ElevatedButton(
                  onPressed: () {
                     _launchPlaystore();
                  },
                  child: Text(
                    'Download Now',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600,color:Color(0xff111111),),
                  ),
                  style: ElevatedButton.styleFrom(primary: Color(0xffFFC908),),
                ),
              ),
          ],
        ),
      ),
    );
  }
}


Future<void> _launchPlaystore() async {
 final url = 'https://play.google.com/store/apps/details?id=com.mobile.legends';
 if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}