import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

class TransactionHistory extends StatefulWidget {
  @override
  _TransactionHistory createState() => _TransactionHistory();
}

class _TransactionHistory extends State<TransactionHistory> {
  final dio = new Dio(); // for http requests
  Widget _appBarTitle = new Text('Transaction History');
  Icon _searchIcon = new Icon(Icons.search) ;

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
                                     "assets/img/sukses.png",
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
                            child: myDetailsContainer4(),
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
                                     "assets/img/failed.png",
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
                            child: myDetailsContainer3(),
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
                                     "assets/img/sukses.png",
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
                                     "assets/img/sukses.png",
                                      width: 50.0,
                                      height: 120,
                                    )
                                ],
                              ),
                            ),),
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
            "Laundromat A11",
            style: TextStyle(
                color: Color(0xffe6020a),
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
                "Godean Street 15, Yogyakarta",
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 18.0,
                ),
              )),
            ],
          )),
        ),
        Container(
            child: Text(
          "17/02/2019",
          style: TextStyle(
              color: Colors.black54,
              fontSize: 18.0,
              fontWeight: FontWeight.bold),
        )),
        Container(
            child: Text(
          "7 USD",
          style: TextStyle(
              color: Colors.black54,
              fontSize: 30.0,
              fontWeight: FontWeight.bold),
        )),
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
           "Laundromat C03",
            style: TextStyle(
                color: Color(0xffe6020a),
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
                "Seturan Street 22, Yogyakarta",
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 18.0,
                ),
              )),
            ],
          )),
        ),
        Container(
            child: Text(
          "26/09/2019",
          style: TextStyle(
              color: Colors.black54,
              fontSize: 18.0,
              fontWeight: FontWeight.bold),
        )),
        Container(
            child: Text(
          "5 USD",
          style: TextStyle(
              color: Colors.black54,
              fontSize: 30.0,
              fontWeight: FontWeight.bold),
        )),
      ],
    );
  }
  Widget myDetailsContainer3() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Container(
              child: Text("Laundromat A02",
            style: TextStyle(
                color: Color(0xffe6020a),
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
                "A.Yani Street 17, Yogyakarta",
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 18.0,
                ),
              )),
            ],
          )),
        ),
        Container(
            child: Text(
          "01/11/2019 ",
          style: TextStyle(
              color: Colors.black54,
              fontSize: 18.0,
              fontWeight: FontWeight.bold),
        )),
        Container(
            child: Text(
          "10 USD",
          style: TextStyle(
              color: Colors.black54,
              fontSize: 30.0,
              fontWeight: FontWeight.bold),
        )),
      ],
    );
  }
  Widget myDetailsContainer4() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Container(
              child: Text(
            "Laundromat B07",
            style: TextStyle(
                color: Color(0xffe6020a),
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
                "Gejayan Street 56, Yogyakarta",
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 18.0,
                ),
              )),
            ],
          )),
        ),
        Container(
            child: Text(
          "03/09/2019 ",
          style: TextStyle(
              color: Colors.black54,
              fontSize: 18.0,
              fontWeight: FontWeight.bold),
        )),
        Container(
            child: Text(
          "5 USD",
          style: TextStyle(
              color: Colors.black54,
              fontSize: 30.0,
              fontWeight: FontWeight.bold),
        )),
      ],
    );
  }

  Widget _buildBar(BuildContext context) {
    return new AppBar(
      backgroundColor: Colors.green[800],
      centerTitle: true,
      title: _appBarTitle,
      leading: new IconButton(
        icon: _searchIcon,
        onPressed: _searchPressed,
      ),
    );
  }

  void _searchPressed() {
    setState(() {
      if (this._searchIcon.icon == Icons.search) {
        this._searchIcon = new Icon(Icons.close);
        this._appBarTitle = new TextField(
          decoration: new InputDecoration(
              prefixIcon: new Icon(Icons.search), hintText: 'Search...'), 
        );
      } else {
        this._searchIcon = new Icon(Icons.search);
        this._appBarTitle = new Text('Transaction History');
      }
    });
  }
}
