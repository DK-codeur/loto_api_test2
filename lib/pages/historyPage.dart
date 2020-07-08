import 'package:flutter/material.dart';

import 'historyIvoire.dart';

class HistoriquePage extends StatefulWidget {
  static const routeName = '/historiquepage';

  @override
  _HistoriquePageState createState() => _HistoriquePageState();
}

class _HistoriquePageState extends State<HistoriquePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Historique',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              size: 25,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.pop(context);
            }),
      ),
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 20,
              ),
              Text(
                "Retrouvez l'historique",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "des résultats",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.w700),
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
                              builder: (context) => HistoriqueIvoire()));
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
                                            AssetImage('asset/ivory-coast.png'),
                                        fit: BoxFit.cover))),
                            Column(
                              children: <Widget>[
                                Center(
                                    child: Text(
                                  "Historique",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700),
                                )),
                                Center(
                                    child: Text(
                                  "résultats",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700),
                                )),
                                Center(
                                    child: Text(
                                  "Cote d'Ivoire",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
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
                      // Navigator.push(context, MaterialPageRoute(
                      //     builder: (context)=> ResultatsPage()
                      // ));
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
                                        image: AssetImage('asset/ghana.png'),
                                        fit: BoxFit.cover))),
                            Column(
                              children: <Widget>[
                                Center(
                                    child: Text(
                                  "Historique",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700),
                                )),
                                Center(
                                    child: Text(
                                  "résultats",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700),
                                )),
                                Center(
                                    child: Text(
                                  "Ghana",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
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
        ),
      ),
    );
  }
}
