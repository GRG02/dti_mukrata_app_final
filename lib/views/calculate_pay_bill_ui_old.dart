import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CalculatePayBillUI extends StatefulWidget {
  const CalculatePayBillUI({super.key});

  @override
  State<CalculatePayBillUI> createState() => _CalculatePayBillUIState();
}

class _CalculatePayBillUIState extends State<CalculatePayBillUI> {
  bool _adultAmt = false;
  bool _teenAmt = false;
  int drinkBuf = 1;

  List<String> _memList = [
    'ไม่เป็นสมาชิก',
    'สมาชิก Silver Member ลด 5%',
    'สมาชิก Gold Member ลด 10%',
    'สมาชิก Platinum Member ลด 20%',
  ];

  String _memType = 'ไม่เป็นสมาชิก';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              ClipRRect(
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.3,
                  height: MediaQuery.of(context).size.height * 0.15,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                      width: 4.0,
                    ),
                    borderRadius: BorderRadius.circular(100.0),
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/images/camera.jpg',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Container(
                child: Padding(
                  padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.height * 0.03,
                    right: MediaQuery.of(context).size.height * 0.03,
                  ),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'จำนวนคน',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.025,
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Checkbox(
                              onChanged: (paramValue) {
                                setState(() {
                                  _adultAmt = paramValue!;
                                });
                              },
                              value: _adultAmt,
                              checkColor: Colors.white,
                              activeColor: Colors.black,
                            ),
                            Text(
                              'ผู้ใหญ่ 299 บาท/คน จำนวน',
                              style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.height * 0.02,
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.03,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.15,
                              child: TextField(
                                keyboardType: TextInputType.number,
                                textAlign: TextAlign.center,
                                decoration: InputDecoration(
                                  hintText: '0 คน',
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Checkbox(
                              onChanged: (paramValue) {
                                setState(() {
                                  _teenAmt = paramValue!;
                                });
                              },
                              value: _teenAmt,
                              checkColor: Colors.white,
                              activeColor: Colors.black,
                            ),
                            Text(
                              'เด็ก 69 บาท/คน จำนวน',
                              style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.height * 0.02,
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.03,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.15,
                              child: TextField(
                                keyboardType: TextInputType.number,
                                textAlign: TextAlign.center,
                                decoration: InputDecoration(
                                  hintText: '0 คน',
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.03,
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'บุฟเฟต์น้ำดิ่ม',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.025,
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Radio(
                              value: 1,
                              groupValue: drinkBuf,
                              onChanged: (paramValue) {
                                setState(() {
                                  drinkBuf = paramValue!;
                                });
                              },
                            ),
                            Text(
                              'รับ 25 บาท/หัว',
                              style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.height * 0.02,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Radio(
                              value: 2,
                              groupValue: drinkBuf,
                              onChanged: (paramValue) {
                                setState(() {
                                  drinkBuf = paramValue!;
                                });
                              },
                            ),
                            Text(
                              'ไม่รับ',
                              style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.height * 0.02,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.12,
                            ),
                            Text(
                              'โค๊ก 20 บาท/ขวด จำนวน',
                              style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.height * 0.02,
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.03,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.15,
                              child: TextField(
                                keyboardType: TextInputType.number,
                                textAlign: TextAlign.center,
                                decoration: InputDecoration(
                                  hintText: '0 ขวด',
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.12,
                            ),
                            Text(
                              'น้ำเปล่า 15 บาท/ขวด จำนวน',
                              style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.height * 0.02,
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.03,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.15,
                              child: TextField(
                                keyboardType: TextInputType.number,
                                textAlign: TextAlign.center,
                                decoration: InputDecoration(
                                  hintText: '0 ขวด',
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.03,
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'ประเภทสมาชิก',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.025,
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 15.0,
                          ),
                          child: DropdownButton(
                            underline: Divider(
                              height: 1,
                              color: Colors.black,
                            ),
                            value: _memType,
                            items: _memList
                                .map(
                                  (e) => DropdownMenuItem(
                                    value: e,
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          e,
                                        )
                                      ],
                                    ),
                                  ),
                                )
                                .toList(),
                            onChanged: (paramValue) {
                              setState(() {
                                _memType = paramValue!;
                              });
                            },
                            isExpanded: true,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.03,
                        ),
                        Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ElevatedButton.icon(
                                onPressed: () {},
                                icon: Icon(
                                  FontAwesomeIcons.moneyBill,
                                  color: Colors.white,
                                ),
                                label: Text(
                                  'คำนวณเงิน',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize:
                                        MediaQuery.of(context).size.height * 0.025,
                                  ),
                                ),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.deepOrange,
                                  fixedSize: Size(
                                    MediaQuery.of(context).size.width * 0.5,
                                    MediaQuery.of(context).size.height * 0.07,
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.02,
                              ),
                              ElevatedButton.icon(
                                onPressed: () {},
                                icon: Icon(
                                  FontAwesomeIcons.moneyBill,
                                  color: Colors.white,
                                ),
                                label: Text(
                                  'ยกเลิก',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize:
                                        MediaQuery.of(context).size.height * 0.025,
                                  ),
                                ),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.black54,
                                  fixedSize: Size(
                                    MediaQuery.of(context).size.width * 0.35,
                                    MediaQuery.of(context).size.height * 0.07,
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.1,
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
