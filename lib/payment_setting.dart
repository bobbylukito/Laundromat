import 'package:flutter/material.dart';
//import 'package:dio/dio.dart';

class PaymentSetting extends StatefulWidget {
  @override
  _PaymentSetting createState() => _PaymentSetting();
}

class _PaymentSetting extends State<PaymentSetting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[50],
      appBar: _buildBar(context),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              child: new FittedBox(
                child: Material(
                    color: Colors.white,
                    elevation: 14.0,
                    borderRadius: BorderRadius.circular(24.0),
                    shadowColor: Color(0xFF2E7D32),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 16.0),
                            child: myDetailsContainer1(),
                          ),
                        ),
                        Container(
                          width: 120,
                          height: 120,
                          child: ClipRRect(
                            borderRadius: new BorderRadius.circular(24.0),
                            child: Container(
                              child: new Column(
                                children: <Widget>[
                                  new Image.asset(
                                    "assets/img/mastercard.png",
                                    width: 50.0,
                                    height: 120,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    )),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              child: new FittedBox(
                child: Material(
                    color: Colors.green,
                    elevation: 14.0,
                    borderRadius: BorderRadius.circular(24.0),
                    shadowColor: Color(0xFF2E7D32),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 16.0),
                            child: myDetailsContainer2(),
                          ),
                        ),
                        Container(
                          width: 120,
                          height: 120,
                          child: ClipRRect(
                            borderRadius: new BorderRadius.circular(24.0),
                            child: Container(
                              child: new Column(
                                children: <Widget>[
                                  new Image.asset(
                                    "assets/img/addcard.png",
                                    width: 50.0,
                                    height: 120,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    )),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget myDetailsContainer1() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Container(
              child: Text(
            "9999-9999-9999-9999",
            style: TextStyle(
                color: Colors.black26,
                fontSize: 24.0,
                fontWeight: FontWeight.bold),
          )),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Container(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                  child: Text(
                "expired 12/20",
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 14.0,
                ),
              )),
            ],
          )),
        ),
      ],
    );
  }

  Widget myDetailsContainer2() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Container(
              child: Text(
            "add Credit / Debit Card",
            style: TextStyle(
                color: Colors.white,
                //backgroundColor: Colors.yellow[100],
                fontSize: 24.0,
                fontWeight: FontWeight.bold),
          )),
        ),
      ],
    );
  }

  Widget _buildBar(BuildContext context) {
    return new AppBar(
      backgroundColor: Colors.green[800],
      centerTitle: true,
      title: new Text("PaymentSetting"),
    );
  }
}
