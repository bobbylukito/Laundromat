import 'package:flutter/material.dart';
import 'package:laundmart2/constants.dart';

class Failed extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: ColorPalette.anotherPage2,
        padding: EdgeInsets.all(20.0),
        child: ListView(
          children: <Widget>[
            Center(
              child: Column(
                children: <Widget>[
                  _icon(),
                  _button(context),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _icon() {
    return Image.asset(
      "assets/img/failed.png",
      width: 150.0,
      height: 150.0,
    );
  }
  Widget _button(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(top: 16.0),
        ),
        new Padding(
            padding: new EdgeInsets.all(2.0),
            ),
            new Text(
             "PAYMENT FAILED",
              style: TextStyle(color: Colors.red, fontSize: 40.0, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            Padding(
              padding: new EdgeInsets.all(32.0),
            ),
        InkWell(
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 18.0),
            width: double.infinity,
            child: Text(
              'Main Page',
              style: TextStyle(color: Colors.red[300]),
              textAlign: TextAlign.center,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30.0),
            ),
          ),
        ),
        
        Padding(
          padding: EdgeInsets.only(top: 16.0),
        ),
        Text(
          'Transaction Failed, Please click Main Page to try again',
          style: TextStyle(
            color: Colors.black26,
            fontSize: 15.0,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
