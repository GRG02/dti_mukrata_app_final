// ignore_for_file: prefer_const_constructors, prefer_final_fields, prefer_const_literals_to_create_immutables

import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:dti_mukrata_app/views/about_ui.dart';
import 'package:dti_mukrata_app/views/calculate_pay_bill_ui.dart';
import 'package:dti_mukrata_app/views/menu_shop_ui.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeUI extends StatefulWidget {
  const HomeUI({super.key});

  @override
  State<HomeUI> createState() => _HomeUIState();
}

class _HomeUIState extends State<HomeUI> {
  //สร้างตัวแปรเก็บ views ที่จะไปใช้กับ BottomNavigationBar
  List<Widget> _showView = [
    CalculatePayBillUI(),
    MenuShopUI(),
    AboutUI(),
  ];

  //สร้างตัวแปรเก็บหมายเลข currentIndex
  int _currentIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Text(
          'Tech SAU BUFFET',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: _showView[_currentIndex],
      bottomNavigationBar: ConvexAppBar(
        backgroundColor: Colors.deepOrange,
        activeColor: Colors.white,
        //style: TabStyle.react,
        initialActiveIndex: 1,
        onTap: (value) {
          setState(() {
            _currentIndex = value;
          });
        },
        items: [
          TabItem(
            icon:
                Icon(FontAwesomeIcons.moneyBill1Wave, color: Colors.deepOrange),
            title: 'คำนวณ',
          ),
          TabItem(
            icon: Icon(Icons.home, color: Colors.deepOrange),
            title: 'หน้าหลัก',
          ),
          TabItem(
            icon: Icon(Icons.shop, color: Colors.deepOrange),
            title: 'เกี่ยวกับเรา',
          ),
        ],
      ),
    );
  }
}
