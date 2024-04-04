import 'package:flutter/material.dart';

class AboutUI extends StatefulWidget {
  const AboutUI({super.key});

  @override
  State<AboutUI> createState() => _AboutUIState();
}

class _AboutUIState extends State<AboutUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            Image.asset(
              'assets/images/saulogo.png',
              width: MediaQuery.of(context).size.width * 0.5,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            Text(
              'Tech SAU BUFFET',
              style: TextStyle(
                color: Colors.deepOrange,
                fontWeight: FontWeight.bold,
                fontSize: MediaQuery.of(context).size.height * 0.035,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            Text(
              'แอพพลิเคชันร้านหมูกระทะ',
              style: TextStyle(
                color: Colors.black54,
                fontWeight: FontWeight.bold,
                fontSize: MediaQuery.of(context).size.height * 0.022,
              ),
            ),
            Text(
              'เพื่อคนไทย',
              style: TextStyle(
                color: Colors.black54,
                fontWeight: FontWeight.bold,
                fontSize: MediaQuery.of(context).size.height * 0.022,
              ),
            ),
            Text(
              'โดยเด็กไทย',
              style: TextStyle(
                color: Colors.black54,
                fontWeight: FontWeight.bold,
                fontSize: MediaQuery.of(context).size.height * 0.022,
              ),
            ),
            Text(
              'สนใจแอปพลิเคชันติดต่อ',
              style: TextStyle(
                color: Colors.black54,
                fontWeight: FontWeight.bold,
                fontSize: MediaQuery.of(context).size.height * 0.022,
              ),
            ),
            Text(
              'เด็กไอที SAU',
              style: TextStyle(
                color: Colors.black54,
                fontWeight: FontWeight.bold,
                fontSize: MediaQuery.of(context).size.height * 0.035,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            Image.asset(
              'assets/images/sauqr.png',
              width: MediaQuery.of(context).size.width * 0.30,
            ),
          ],
        ),
      ),
    );
  }
}
