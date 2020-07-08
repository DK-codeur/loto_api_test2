import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projet_loto/pages/historyPage.dart';
import 'package:projet_loto/pages/pipii.dart';
// import 'package:projet_loto/pages/pipo.dart';
// import 'package:projet_loto/pages/resultatPage.dart';

// import '../message.dart';
import 'Resultsss.dart';
import 'forcaster.dart';
// import 'primo.dart';

class HomePage extends StatefulWidget {
  static const routeName = '/homepage';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("asset/bn.jpg"), fit: BoxFit.cover)),
              accountName: Text("Ashish Rawat"),
              accountEmail: Text("Loto06@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundColor:
                    Theme.of(context).platform == TargetPlatform.iOS
                        ? Colors.white
                        : Colors.white,
                child: Text(
                  "L",
                  style: TextStyle(
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.orange),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Pipiiiiii()));
              },
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.scatter_plot,
                    color: Colors.orange,
                    size: 25,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    "Résultats Cote d'Ivoire",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.black87,
                        fontFamily: 'BAARS'),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Pipiiiiii()));
              },
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.scatter_plot,
                    color: Colors.orange,
                    size: 25,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    "Résultats Ghana",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      fontFamily: 'BAARS',
                      color: Colors.black87,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HistoriquePage()));
              },
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.scatter_plot,
                    color: Colors.orange,
                    size: 25,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    "Historiques",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      fontFamily: 'BAARS',
                      color: Colors.black87,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ForcasterPage()));
              },
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.scatter_plot,
                    color: Colors.orange,
                    size: 25,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    "Forcaster",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      fontFamily: 'BAARS',
                      color: Colors.black87,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Colors.orange,
          child: ListView(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      Container(
                          height: 250,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("asset/bn.jpg"),
                                  fit: BoxFit.cover)),
                          child: Column(
                            children: <Widget>[
                              SizedBox(
                                height: 50,
                              ),
                              Text(
                                "Loto bonheur,",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.orange,
                                    fontSize: 35,
                                    fontFamily: 'BAARS',
                                    fontWeight: FontWeight.w700),
                              ),
                              SizedBox(
                                height: 40,
                              ),
                              Text(
                                "On a tous une raison de jouer",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 28,
                                    fontFamily: 'BAARS',
                                    fontWeight: FontWeight.w700),
                              ),
                            ],
                          )),
                      Container(
                        margin: EdgeInsets.only(top: 200, left: 30, right: 30),
                        padding: EdgeInsets.only(
                          bottom: 20,
                        ),
                        child: Card(
                          child: Container(
                            padding: EdgeInsets.only(bottom: 40, top: 50),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Center(
                                    child: Text("Parier, Gagner",
                                        style: TextStyle(
                                            color: Colors.black87,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 40,
                                            fontFamily: 'Quillain'))),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Resultats()));
                        },
                        child: Card(
                          elevation: 5,
                          //color: Colors.transparent,
                          child: Container(
                            height: MediaQuery.of(context).size.height / 3.2,
                            width: MediaQuery.of(context).size.height / 4.8,
                            decoration: BoxDecoration(
                                color: Colors.grey.withOpacity(0.1),
                                borderRadius: BorderRadius.circular(30)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: <Widget>[
                                //SizedBox(height: 20,),
                                Container(
                                    height: 70,
                                    width: 100,
                                    decoration: BoxDecoration(
                                        //color: Colors.orange,
                                        image: DecorationImage(
                                            image: AssetImage(
                                                'asset/ivory-coast.png'),
                                            fit: BoxFit.cover))),
                                Column(
                                  children: <Widget>[
                                    Center(
                                        child: Text(
                                      "Resultats",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w700),
                                    )),
                                    Center(
                                        child: Text(
                                      "Cote d'Ivoire",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w700),
                                    )),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Pipiiiiii()));
                          },
                          child: Card(
                            elevation: 5,
                            //color: Colors.transparent,
                            child: Container(
                              height: MediaQuery.of(context).size.height / 3.2,
                              width: MediaQuery.of(context).size.height / 4.8,
                              decoration: BoxDecoration(
                                  color: Colors.grey.withOpacity(0.1),
                                  borderRadius: BorderRadius.circular(30)),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: <Widget>[
                                  //SizedBox(height: 20,),
                                  Container(
                                      height: 70,
                                      width: 100,
                                      decoration: BoxDecoration(
                                          //color: Colors.orange,
                                          image: DecorationImage(
                                              image:
                                                  AssetImage('asset/ghana.png'),
                                              fit: BoxFit.cover))),
                                  Column(
                                    children: <Widget>[
                                      Center(
                                          child: Text(
                                        "Resultats",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 18,
                                            fontWeight: FontWeight.w700),
                                      )),
                                      Center(
                                          child: Text(
                                        "Ghana",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 18,
                                            fontWeight: FontWeight.w700),
                                      )),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ))
                    ],
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HistoriquePage()));
                        },
                        child: Card(
                          elevation: 5,
                          //color: Colors.transparent,
                          child: Container(
                            height: MediaQuery.of(context).size.height / 3.2,
                            width: MediaQuery.of(context).size.height / 4.8,
                            decoration: BoxDecoration(
                                color: Colors.grey.withOpacity(0.1),
                                borderRadius: BorderRadius.circular(30)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: <Widget>[
                                //SizedBox(height: 20,),
                                Container(
                                    height: 70,
                                    width: 100,
                                    decoration: BoxDecoration(
                                        //color: Colors.orange,
                                        image: DecorationImage(
                                            image: AssetImage(
                                                'asset/calendar.png'),
                                            fit: BoxFit.cover))),
                                Column(
                                  children: <Widget>[
                                    Center(
                                        child: Text(
                                      "Historique",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w700),
                                    )),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ForcasterPage()));
                        },
                        child: Card(
                          elevation: 5,
                          //color: Colors.transparent,
                          child: Container(
                            height: MediaQuery.of(context).size.height / 3.2,
                            width: MediaQuery.of(context).size.height / 4.8,
                            decoration: BoxDecoration(
                                color: Colors.grey.withOpacity(0.1),
                                borderRadius: BorderRadius.circular(30)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: <Widget>[
                                //SizedBox(height: 20,),
                                Container(
                                    height: 70,
                                    width: 100,
                                    decoration: BoxDecoration(
                                        //color: Colors.orange,
                                        image: DecorationImage(
                                            image:
                                                AssetImage('asset/shield.png'),
                                            fit: BoxFit.cover))),
                                Column(
                                  children: <Widget>[
                                    Center(
                                        child: Text(
                                      "Forcaster",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w700),
                                    )),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
