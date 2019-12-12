import 'package:flutter/material.dart';
import 'package:laundmart2/constants.dart';

class Success extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: ColorPalette.anotherPage,
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
      "assets/img/sukses.png",
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
             "PAYMENT SUCCESS",
              style: TextStyle(color: Colors.lightGreenAccent[700], fontSize: 40.0, fontWeight: FontWeight.bold),
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
              style: TextStyle(color: ColorPalette.primaryColor),
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
          'Transaction Success, Please click Main Page to continue',
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
