import 'package:flutter/material.dart';
// import 'package:projet_loto/providers/ResultIvoirien.dart';
import 'package:projet_loto/providers/data_provider.dart';
import 'package:provider/provider.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Pipiiiiii extends StatefulWidget {
  Pipiiiiii({Key key}) : super(key: key);
  static const routeName = '/pipiiii';

  @override
  _PipiiiiiiState createState() => _PipiiiiiiState();
}

class _PipiiiiiiState extends State<Pipiiiiii> {
  Future refreshData(BuildContext context) async {
    await Provider.of<DataProviders>(context).fetchAndSetLotto();
  }

  @override
  void initState() {
    Future.delayed(Duration.zero).then((_) {
      Provider.of<DataProviders>(context).fetchAndSetLotto();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Résultats Ghana",
          style: TextStyle(color: Colors.black, fontSize: 20),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
            size: 28,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 20,
                ),
                Container(
                    height: MediaQuery.of(context).size.height / 1.34,
                    child: ListView(
                      children: <Widget>[
                        Card(
                          child: Container(
                            height: MediaQuery.of(context).size.height / 2.5,
                            width: MediaQuery.of(context).size.width / 1.1,
                            color: Colors.white,
                            child: Column(
                              children: <Widget>[
                                SizedBox(height: 15),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Text(
                                        '17 janvier 2020',
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        '10h00',
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 50),
                                Center(
                                  child: Container(
                                    margin: EdgeInsets.only(left: 20),
                                    height: 20,
                                    width: 180,
                                    child: Text(
                                      'Numéros Machines',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                          color: Colors.green),
                                    ),
                                  ),
                                ),
                                //SizedBox(height: 2),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Container(
                                        height: 30,
                                        width: 30,
                                        decoration: BoxDecoration(
                                            color: Colors.green,
                                            shape: BoxShape.circle),
                                        child: Center(
                                            child: Text(
                                          '06',
                                          style: TextStyle(color: Colors.white),
                                        )),
                                      ),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      Container(
                                        height: 30,
                                        width: 30,
                                        decoration: BoxDecoration(
                                            color: Colors.green,
                                            shape: BoxShape.circle),
                                        child: Center(
                                            child: Text(
                                          '38',
                                          style: TextStyle(color: Colors.white),
                                        )),
                                      ),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      Container(
                                        height: 30,
                                        width: 30,
                                        decoration: BoxDecoration(
                                            color: Colors.green,
                                            shape: BoxShape.circle),
                                        child: Center(
                                            child: Text(
                                          '14',
                                          style: TextStyle(color: Colors.white),
                                        )),
                                      ),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      Container(
                                        height: 30,
                                        width: 30,
                                        decoration: BoxDecoration(
                                            color: Colors.green,
                                            shape: BoxShape.circle),
                                        child: Center(
                                            child: Text(
                                          '26',
                                          style: TextStyle(color: Colors.white),
                                        )),
                                      ),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      Container(
                                        height: 30,
                                        width: 30,
                                        decoration: BoxDecoration(
                                            color: Colors.green,
                                            shape: BoxShape.circle),
                                        child: Center(
                                            child: Text(
                                          '96',
                                          style: TextStyle(color: Colors.white),
                                        )),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 20),
                                Container(
                                  margin: EdgeInsets.only(left: 20),
                                  height: 20,
                                  width: 180,
                                  child: Text(
                                    'Numéros Gagnants',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                      color: Colors.deepOrange,
                                    ),
                                  ),
                                ),
                                //SizedBox(height: 10),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Container(
                                        height: 30,
                                        width: 30,
                                        decoration: BoxDecoration(
                                            color: Colors.deepOrange,
                                            shape: BoxShape.circle),
                                        child: Center(
                                            child: Text(
                                          '73',
                                          style: TextStyle(color: Colors.white),
                                        )),
                                      ),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      Container(
                                        height: 30,
                                        width: 30,
                                        decoration: BoxDecoration(
                                            color: Colors.deepOrange,
                                            shape: BoxShape.circle),
                                        child: Center(
                                            child: Text(
                                          '18',
                                          style: TextStyle(color: Colors.white),
                                        )),
                                      ),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      Container(
                                        height: 30,
                                        width: 30,
                                        decoration: BoxDecoration(
                                            color: Colors.deepOrange,
                                            shape: BoxShape.circle),
                                        child: Center(
                                            child: Text(
                                          '06',
                                          style: TextStyle(color: Colors.white),
                                        )),
                                      ),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      Container(
                                        height: 30,
                                        width: 30,
                                        decoration: BoxDecoration(
                                            color: Colors.deepOrange,
                                            shape: BoxShape.circle),
                                        child: Center(
                                            child: Text(
                                          '45',
                                          style: TextStyle(color: Colors.white),
                                        )),
                                      ),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      Container(
                                        height: 30,
                                        width: 30,
                                        decoration: BoxDecoration(
                                            color: Colors.deepOrange,
                                            shape: BoxShape.circle),
                                        child: Center(
                                            child: Text(
                                          '19',
                                          style: TextStyle(color: Colors.white),
                                        )),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Card(
                          child: Container(
                            height: MediaQuery.of(context).size.height / 2.5,
                            width: MediaQuery.of(context).size.width / 1.1,
                            color: Colors.white,
                            child: Column(
                              children: <Widget>[
                                SizedBox(height: 15),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Text(
                                        '17 janvier 2020',
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        '13h00',
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 50),
                                Center(
                                  child: Container(
                                    margin: EdgeInsets.only(left: 20),
                                    height: 20,
                                    width: 180,
                                    child: Text(
                                      'Numéros Machines',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                          color: Colors.green),
                                    ),
                                  ),
                                ),
                                //SizedBox(height: 2),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Container(
                                        height: 30,
                                        width: 30,
                                        decoration: BoxDecoration(
                                            color: Colors.green,
                                            shape: BoxShape.circle),
                                        child: Center(
                                            child: Text(
                                          '23',
                                          style: TextStyle(color: Colors.white),
                                        )),
                                      ),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      Container(
                                        height: 30,
                                        width: 30,
                                        decoration: BoxDecoration(
                                            color: Colors.green,
                                            shape: BoxShape.circle),
                                        child: Center(
                                            child: Text(
                                          '55',
                                          style: TextStyle(color: Colors.white),
                                        )),
                                      ),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      Container(
                                        height: 30,
                                        width: 30,
                                        decoration: BoxDecoration(
                                            color: Colors.green,
                                            shape: BoxShape.circle),
                                        child: Center(
                                            child: Text(
                                          '32',
                                          style: TextStyle(color: Colors.white),
                                        )),
                                      ),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      Container(
                                        height: 30,
                                        width: 30,
                                        decoration: BoxDecoration(
                                            color: Colors.green,
                                            shape: BoxShape.circle),
                                        child: Center(
                                            child: Text(
                                          '15',
                                          style: TextStyle(color: Colors.white),
                                        )),
                                      ),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      Container(
                                        height: 30,
                                        width: 30,
                                        decoration: BoxDecoration(
                                            color: Colors.green,
                                            shape: BoxShape.circle),
                                        child: Center(
                                            child: Text(
                                          '89',
                                          style: TextStyle(color: Colors.white),
                                        )),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 20),
                                Container(
                                  margin: EdgeInsets.only(left: 20),
                                  height: 20,
                                  width: 180,
                                  child: Text(
                                    'Numéros Gagnants',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                      color: Colors.deepOrange,
                                    ),
                                  ),
                                ),
                                //SizedBox(height: 10),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Container(
                                        height: 30,
                                        width: 30,
                                        decoration: BoxDecoration(
                                            color: Colors.deepOrange,
                                            shape: BoxShape.circle),
                                        child: Center(
                                            child: Text(
                                          '78',
                                          style: TextStyle(color: Colors.white),
                                        )),
                                      ),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      Container(
                                        height: 30,
                                        width: 30,
                                        decoration: BoxDecoration(
                                            color: Colors.deepOrange,
                                            shape: BoxShape.circle),
                                        child: Center(
                                            child: Text(
                                          '96',
                                          style: TextStyle(color: Colors.white),
                                        )),
                                      ),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      Container(
                                        height: 30,
                                        width: 30,
                                        decoration: BoxDecoration(
                                            color: Colors.deepOrange,
                                            shape: BoxShape.circle),
                                        child: Center(
                                            child: Text(
                                          '54',
                                          style: TextStyle(color: Colors.white),
                                        )),
                                      ),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      Container(
                                        height: 30,
                                        width: 30,
                                        decoration: BoxDecoration(
                                            color: Colors.deepOrange,
                                            shape: BoxShape.circle),
                                        child: Center(
                                            child: Text(
                                          '32',
                                          style: TextStyle(color: Colors.white),
                                        )),
                                      ),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      Container(
                                        height: 30,
                                        width: 30,
                                        decoration: BoxDecoration(
                                            color: Colors.deepOrange,
                                            shape: BoxShape.circle),
                                        child: Center(
                                            child: Text(
                                          '12',
                                          style: TextStyle(color: Colors.white),
                                        )),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Card(
                          child: Container(
                            height: MediaQuery.of(context).size.height / 2.5,
                            width: MediaQuery.of(context).size.width / 1.1,
                            color: Colors.white,
                            child: Column(
                              children: <Widget>[
                                SizedBox(height: 15),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Text(
                                        '17 janvier 2020',
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        '18h00',
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 50),
                                Center(
                                  child: Container(
                                    margin: EdgeInsets.only(left: 20),
                                    height: 20,
                                    width: 180,
                                    child: Text(
                                      'Numéros Machines',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                          color: Colors.green),
                                    ),
                                  ),
                                ),
                                //SizedBox(height: 2),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Container(
                                        height: 30,
                                        width: 30,
                                        decoration: BoxDecoration(
                                            color: Colors.green,
                                            shape: BoxShape.circle),
                                        child: Center(
                                            child: Text(
                                          '37',
                                          style: TextStyle(color: Colors.white),
                                        )),
                                      ),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      Container(
                                        height: 30,
                                        width: 30,
                                        decoration: BoxDecoration(
                                            color: Colors.green,
                                            shape: BoxShape.circle),
                                        child: Center(
                                            child: Text(
                                          '45',
                                          style: TextStyle(color: Colors.white),
                                        )),
                                      ),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      Container(
                                        height: 30,
                                        width: 30,
                                        decoration: BoxDecoration(
                                            color: Colors.green,
                                            shape: BoxShape.circle),
                                        child: Center(
                                            child: Text(
                                          '33',
                                          style: TextStyle(color: Colors.white),
                                        )),
                                      ),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      Container(
                                        height: 30,
                                        width: 30,
                                        decoration: BoxDecoration(
                                            color: Colors.green,
                                            shape: BoxShape.circle),
                                        child: Center(
                                            child: Text(
                                          '67',
                                          style: TextStyle(color: Colors.white),
                                        )),
                                      ),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      Container(
                                        height: 30,
                                        width: 30,
                                        decoration: BoxDecoration(
                                            color: Colors.green,
                                            shape: BoxShape.circle),
                                        child: Center(
                                            child: Text(
                                          '28',
                                          style: TextStyle(color: Colors.white),
                                        )),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 20),
                                Container(
                                  margin: EdgeInsets.only(left: 20),
                                  height: 20,
                                  width: 180,
                                  child: Text(
                                    'Numéros Gagnants',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                      color: Colors.deepOrange,
                                    ),
                                  ),
                                ),
                                //SizedBox(height: 10),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Container(
                                        height: 30,
                                        width: 30,
                                        decoration: BoxDecoration(
                                            color: Colors.deepOrange,
                                            shape: BoxShape.circle),
                                        child: Center(
                                            child: Text(
                                          '11',
                                          style: TextStyle(color: Colors.white),
                                        )),
                                      ),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      Container(
                                        height: 30,
                                        width: 30,
                                        decoration: BoxDecoration(
                                            color: Colors.deepOrange,
                                            shape: BoxShape.circle),
                                        child: Center(
                                            child: Text(
                                          '52',
                                          style: TextStyle(color: Colors.white),
                                        )),
                                      ),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      Container(
                                        height: 30,
                                        width: 30,
                                        decoration: BoxDecoration(
                                            color: Colors.deepOrange,
                                            shape: BoxShape.circle),
                                        child: Center(
                                            child: Text(
                                          '34',
                                          style: TextStyle(color: Colors.white),
                                        )),
                                      ),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      Container(
                                        height: 30,
                                        width: 30,
                                        decoration: BoxDecoration(
                                            color: Colors.deepOrange,
                                            shape: BoxShape.circle),
                                        child: Center(
                                            child: Text(
                                          '96',
                                          style: TextStyle(color: Colors.white),
                                        )),
                                      ),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      Container(
                                        height: 30,
                                        width: 30,
                                        decoration: BoxDecoration(
                                            color: Colors.deepOrange,
                                            shape: BoxShape.circle),
                                        child: Center(
                                            child: Text(
                                          '26',
                                          style: TextStyle(color: Colors.white),
                                        )),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}

/*Card(
                            child: Container(
                              height: MediaQuery.of(context).size.height/2.5,
                              width: MediaQuery.of(context).size.width/1.1,
                              color: Colors.white,
                              child: Column(
                                children: <Widget>[
                                  SizedBox(height: 15),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Text('17 janvier 2020', style: TextStyle(
                                            fontSize: 20, fontWeight: FontWeight.bold
                                        ),),
                                        Text('10h00', style: TextStyle(
                                            fontSize: 18, fontWeight: FontWeight.bold
                                        ),),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 50),
                                  Center(
                                    child: Container(
                                      margin: EdgeInsets.only(left: 20),
                                      height: 20,
                                      width: 180,
                                      child: Text('Numéros Machines', style: TextStyle(
                                        fontWeight: FontWeight.bold, fontSize: 16,   color: Colors.green
                                      ), ),
                                    ),
                                  ),
                                  //SizedBox(height: 2),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: <Widget>[
                                        Container(
                                          height: 30,
                                          width: 30,
                                          decoration: BoxDecoration(
                                              color: Colors.green,
                                              shape: BoxShape.circle
                                          ),
                                          child: Center(
                                              child: Text('06', style: TextStyle(
                                                  color: Colors.white
                                              ),)
                                          ),
                                        ),
                                        SizedBox(width: 8,),
                                        Container(
                                          height: 30,
                                          width: 30,
                                          decoration: BoxDecoration(
                                              color: Colors.green,
                                              shape: BoxShape.circle
                                          ),
                                          child: Center(
                                              child: Text('06', style: TextStyle(
                                                  color: Colors.white
                                              ),)
                                          ),
                                        ),
                                        SizedBox(width: 8,),
                                        Container(
                                          height: 30,
                                          width: 30,
                                          decoration: BoxDecoration(
                                              color: Colors.green,
                                              shape: BoxShape.circle
                                          ),
                                          child: Center(
                                              child: Text('06', style: TextStyle(
                                                  color: Colors.white
                                              ),)
                                          ),
                                        ),
                                        SizedBox(width: 8,),
                                        Container(
                                          height: 30,
                                          width: 30,
                                          decoration: BoxDecoration(
                                              color: Colors.green,
                                              shape: BoxShape.circle
                                          ),
                                          child: Center(
                                              child: Text('06', style: TextStyle(
                                                  color: Colors.white
                                              ),)
                                          ),
                                        ),
                                        SizedBox(width: 8,),
                                        Container(
                                          height: 30,
                                          width: 30,
                                          decoration: BoxDecoration(
                                              color: Colors.green,
                                              shape: BoxShape.circle
                                          ),
                                          child: Center(
                                              child: Text('06', style: TextStyle(
                                                  color: Colors.white
                                              ),)
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 20),
                                  Container(
                                    margin: EdgeInsets.only(left: 20),
                                    height: 20,
                                    width: 180,
                                    child: Text('Numéros Gagnants', style: TextStyle(
                                      fontWeight: FontWeight.bold, fontSize: 16,  color: Colors.deepOrange,
                                    ), ),
                                  ),
                                  //SizedBox(height: 10),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: <Widget>[
                                        Container(
                                          height: 30,
                                          width: 30,
                                          decoration: BoxDecoration(
                                              color: Colors.deepOrange,
                                              shape: BoxShape.circle
                                          ),
                                          child: Center(
                                              child: Text('06', style: TextStyle(
                                                  color: Colors.white
                                              ),)
                                          ),
                                        ),
                                        SizedBox(width: 8,),
                                        Container(
                                          height: 30,
                                          width: 30,
                                          decoration: BoxDecoration(
                                              color: Colors.deepOrange,
                                              shape: BoxShape.circle
                                          ),
                                          child: Center(
                                              child: Text('06', style: TextStyle(
                                                  color: Colors.white
                                              ),)
                                          ),
                                        ),
                                        SizedBox(width: 8,),
                                        Container(
                                          height: 30,
                                          width: 30,
                                          decoration: BoxDecoration(
                                              color: Colors.deepOrange,
                                              shape: BoxShape.circle
                                          ),
                                          child: Center(
                                              child: Text('06', style: TextStyle(
                                                  color: Colors.white
                                              ),)
                                          ),
                                        ),
                                        SizedBox(width: 8,),
                                        Container(
                                          height: 30,
                                          width: 30,
                                          decoration: BoxDecoration(
                                              color: Colors.deepOrange,
                                              shape: BoxShape.circle
                                          ),
                                          child: Center(
                                              child: Text('06', style: TextStyle(
                                                  color: Colors.white
                                              ),)
                                          ),
                                        ),
                                        SizedBox(width: 8,),
                                        Container(
                                          height: 30,
                                          width: 30,
                                          decoration: BoxDecoration(
                                              color: Colors.deepOrange,
                                              shape: BoxShape.circle
                                          ),
                                          child: Center(
                                              child: Text('06', style: TextStyle(
                                                  color: Colors.white
                                              ),)
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),*/
