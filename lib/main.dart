import 'package:flutter/material.dart';
import 'package:laundmart2/amountSelect.dart';
import 'package:laundmart2/page/login_view.dart';
import 'package:laundmart2/page/register_view.dart';
//import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'page/myhomepage.dart';
//import 'splashscreen_view.dart';
import 'package:laundmart2/Success_page.dart';
import 'package:laundmart2/Failed_page.dart';
//import 'package:laundmart/amountSelect.dart';
import 'package:laundmart2/Transaction_History.dart';
import 'package:laundmart2/edit_profil.dart';
import 'package:laundmart2/selectPayment.dart';
//import 'package:laundmart2/selectPayment.dart';
import 'package:laundmart2/payment_setting.dart';
import 'package:laundmart2/addPayment/addPayment.dart';


void main() {
  runApp(new MaterialApp(
    title: "LAUNDROMAT",


//------------------------BUKA INI --------------------------\\
  //  initialRoute: "/",
  //  routes: {
  //    "/" : (context) => LoginPage(),
  //    RegisterPage.routeName : (context) => RegisterPage(),
  // },
//-----------------------------------------------------------\\


  home: PaymentSetting(), //----------- di tutup aja (buat test aja)
  ));
  
}

class HalamanSatu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
     // backgroundColor: Colors.yellow[50],
      appBar: new AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.green[800],
        //leading: new Icon(Icons.home),
        title: new Container(
            child: new Column(
          children: <Widget>[
            new Padding(
              padding: new EdgeInsets.all(2.0),
            ),
            new Image.asset(
              "assets/img/logoo.png",
              width: 30.0,
              height: 30,
            ),
            new Padding(
            padding: new EdgeInsets.all(2.0),
            ),
            new Text(
             "LAUNDROMAT",
              style: TextStyle(color: Colors.grey[200], fontSize: 10.0, fontWeight: FontWeight.bold),
            ),
          ],
        )),
        
      ),
      body: MyHomePage(),
    );
  }
}
