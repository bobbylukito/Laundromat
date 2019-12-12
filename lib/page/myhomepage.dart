import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:laundmart2/edit_profil.dart';
import 'package:laundmart2/Transaction_History.dart';
import 'package:laundmart2/payment_setting.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
  
}

class _MyHomePageState extends State<MyHomePage> {
  String code = "";
  String getcode = "";

  Future scanbarcode() async {
    getcode =
        await FlutterBarcodeScanner.scanBarcode("#008922", "CANCEL", true);
    setState(() {
      code = getcode;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Container(
        child: new Column(
          children: <Widget>[
            GridView.count(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              crossAxisCount: 2,
              mainAxisSpacing: 0,
              //----------------------------------------------------
              children: <Widget>[
                GestureDetector(
                  child: Container(
                      margin: EdgeInsets.all(5.0),
                      color: Colors.green[300],
                      child: new Column(
                        children: <Widget>[
                          new Padding(
                            padding: new EdgeInsets.all(5.0),
                          ),
                          new Text(
                            "Scan",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold),
                          ),
                          new Padding(
                            padding: new EdgeInsets.all(5.0),
                          ),
                          new Image.asset(
                            "assets/img/scan.png",
                            width: 100.0,
                            height: 100,
                          )
                        ],
                      )),
                  onTap: () {
                    scanbarcode();
                  },
                ),
                //------------------------------------------------------------------------------------
                GestureDetector(
                  child: Container(
                      margin: EdgeInsets.all(5.0),
                      color: Colors.green[300],
                      child: new Column(
                        children: <Widget>[
                          new Padding(
                            padding: new EdgeInsets.all(5.0),
                          ),
                          new Text(
                            "Profil Setting",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold),
                          ),
                          new Padding(
                            padding: new EdgeInsets.all(5.0),
                          ),
                          new Image.asset(
                            "assets/img/user.png",
                            width: 100.0,
                            height: 100,
                          )
                        ],
                      )),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => EditProfile()),
                    );
                  },
                ),
                //------------------------------------------------------------------------------------
                GestureDetector(
                  child: Container(
                      margin: EdgeInsets.all(5.0),
                      color: Colors.green[300],
                      child: new Column(
                        children: <Widget>[
                          new Padding(
                            padding: new EdgeInsets.all(5.0),
                          ),
                          new Text(
                            "Transaction History",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold),
                          ),
                          new Padding(
                            padding: new EdgeInsets.all(5.0),
                          ),
                          new Image.asset(
                            "assets/img/history.png",
                            width: 100.0,
                            height: 100,
                          )
                        ],
                      )),
                      onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => TransactionHistory()),
                    );
                  },
                ),
                //----------------------------------------------------------------------------------------
                GestureDetector(
                  child: Container(
                      margin: EdgeInsets.all(5.0),
                      color: Colors.green[300],
                      child: new Column(
                        children: <Widget>[
                          new Padding(
                            padding: new EdgeInsets.all(5.0),
                          ),
                          new Text(
                            "Payment Setting",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold),
                          ),
                          new Padding(
                            padding: new EdgeInsets.all(5.0),
                          ),
                          new Image.asset(
                            "assets/img/payment.png",
                            width: 100.0,
                            height: 100,
                          )
                        ],
                      )),
                      onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PaymentSetting()),
                    );
                  },
                ),
              ],
            ),
            //-------------------------------------------------------------------------------------------------------------
            Container(
                child: new Column(
              children: <Widget>[
                new Padding(
                  padding: new EdgeInsets.all(10.0),
                ),
                new Text(
                  "How To Use : ",
                  style: TextStyle(fontSize: 18.0),
                ),
                new Padding(
                  padding: new EdgeInsets.all(5.0),
                ),
                new Text(
                  "1. Scan QRcode on Washer Machine   ",
                  style: TextStyle(fontSize: 18.0),
                ),
                new Text(
                  "2. Choose Amount as Needed               ",
                  style: TextStyle(fontSize: 18.0),
                ),
                new Text(
                  "3. Klik Pay and wait till success screen",
                  style: TextStyle(fontSize: 18.0),
                ),
                new Text(
                  "4. Your Washer avaible to use                ",
                  style: TextStyle(fontSize: 18.0),
                ),
              ],
            )),
          ],
        ),
      ),
    );
  }
}
