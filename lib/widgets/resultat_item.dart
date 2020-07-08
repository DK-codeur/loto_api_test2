import 'package:flutter/material.dart';
import 'package:projet_loto/models/loto.dart';
import 'package:provider/provider.dart';

class ResultatItem extends StatefulWidget {
  ResultatItem({Key key}) : super(key: key);

  @override
  _ResultatItemState createState() => _ResultatItemState();
}

class _ResultatItemState extends State<ResultatItem> {
  @override
  Widget build(BuildContext context) {
    final lotto = Provider.of<Loto>(context, listen: false);

    return Container(
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
                child: Card(
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
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                '${lotto.date}',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                '${lotto.heure}',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
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
                                color: Colors.red,
                              ),
                            ),
                          ),
                        ),
                        //SizedBox(height: 2),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text('${lotto.numMachine}',
                                  style: TextStyle(
                                      color: Colors.red,
                                      fontSize: 22.0,
                                      fontWeight: FontWeight.bold))
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
                              color: Colors.orange,
                            ),
                          ),
                        ),
                        //SizedBox(height: 10),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text('${lotto.numGagnant}',
                                  style: TextStyle(
                                      color: Colors.orange,
                                      fontSize: 22.0,
                                      fontWeight: FontWeight.bold))
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
