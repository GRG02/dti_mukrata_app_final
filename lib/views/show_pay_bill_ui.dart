// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable

import 'dart:io';

import 'package:flutter/material.dart';

class ShowPayBillUI extends StatefulWidget {
  File? imageFromCamera;
  String? adult;
  String? teen;
  String? waterSelected;
  String? coke;
  String? plain;
  String? memberType;
  String? payBill;

  ShowPayBillUI({
    Key? key,
    this.imageFromCamera,
    this.adult,
    this.teen,
    this.waterSelected,
    this.coke,
    this.plain,
    this.memberType,
    this.payBill,
  }) : super(key: key);

  @override
  State<ShowPayBillUI> createState() => _ShowPayBillUIState();
}

class _ShowPayBillUIState extends State<ShowPayBillUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Text(
          'ชำระเงิน',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              Image.file(
                widget.imageFromCamera!,
                width: MediaQuery.of(context).size.width * 0.35,
                height: MediaQuery.of(context).size.width * 0.35,
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              Text(
                'จำนวนคน',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: MediaQuery.of(context).size.height * 0.035,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'ผู้ใหญ่  ',
                  ),
                  Text(
                    widget.adult!,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: MediaQuery.of(context).size.height * 0.02,
                      color: Colors.deepOrange,
                    ),
                  ),
                  Text(
                    '  คน',
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'เด็ก  ',
                  ),
                  Text(
                    widget.teen!,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: MediaQuery.of(context).size.height * 0.02,
                      color: Colors.deepOrange,
                    ),
                  ),
                  Text(
                    '  คน',
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.015,
              ),
              Text(
                'บุฟเฟต์น้ำดื่ม',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: MediaQuery.of(context).size.height * 0.035,
                ),
              ),
              Text(
                widget.waterSelected!,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: MediaQuery.of(context).size.height * 0.02,
                  color: Colors.deepOrange,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'โค้ก จำนวน  ',
                  ),
                  Text(
                    widget.coke!,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: MediaQuery.of(context).size.height * 0.02,
                      color: Colors.deepOrange,
                    ),
                  ),
                  Text(
                    '  ขวด',
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'น้ำเปล่าจำนวน  ',
                  ),
                  Text(
                    widget.plain!,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: MediaQuery.of(context).size.height * 0.02,
                      color: Colors.deepOrange,
                    ),
                  ),
                  Text(
                    '  ขวด',
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.015,
              ),
              Text(
                'ประเภทสมาชิก',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: MediaQuery.of(context).size.height * 0.035),
              ),
              Text(
                widget.memberType!,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: MediaQuery.of(context).size.height * 0.02,
                  color: Colors.deepOrange,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.015,
              ),
              Text(
                'รวมเป็นเงินทั้งสิ้น (บาท)',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: MediaQuery.of(context).size.height * 0.035,
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.8,
                height: MediaQuery.of(context).size.height * 0.125,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.amber[100],
                ),
                child: Text(
                  widget.payBill!,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: MediaQuery.of(context).size.height * 0.05,
                    color: Colors.deepOrange,
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.015,
              ),
              Image.asset(
                'assets/images/promptpay.png',
                width: MediaQuery.of(context).size.width * 0.5,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
