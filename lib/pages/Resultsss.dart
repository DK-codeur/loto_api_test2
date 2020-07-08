import 'package:flutter/material.dart';
import 'package:projet_loto/providers/data_provider.dart';
import 'package:projet_loto/widgets/resultat_item.dart';
import 'package:provider/provider.dart';

class Resultats extends StatefulWidget {
  @override
  _ResultatsState createState() => _ResultatsState();
}

class _ResultatsState extends State<Resultats> {
  var _isInit = true;
  var _isLoading = false;

  @override
  void didChangeDependencies() {
    if (_isInit) {
      setState(() {
        _isLoading = true;
      });

      Provider.of<DataProviders>(context).fetchAndSetLotto().then((_) {
        setState(() {
          _isLoading = false;
        });
      });
    }

    _isInit = false;
    super.didChangeDependencies();
  }

  Future refreshData(BuildContext context) async {
    await Provider.of<DataProviders>(context, listen: false).fetchAndSetLotto();
  }

  @override
  Widget build(BuildContext context) {
    final lotto = Provider.of<DataProviders>(context).lotto;

    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Résultats Cote d'Ivoire",
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
        body: (_isLoading)
            ? Center(child: Text('Waiting'))
            : RefreshIndicator(
                onRefresh: () => refreshData(context),
                child: ListView.builder(
                    itemCount: lotto.length,
                    itemBuilder: (ctx, i) => ChangeNotifierProvider.value(
                          value: lotto[i],
                          child: ResultatItem(),
                        )),
              ));
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
                                        fontWeight: FontWeight.bold, fontSize: 16,  color: Colors.red,
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
                                              color: Colors.red,
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
                                              color: Colors.red,
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
                                              color: Colors.red,
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
                                              color: Colors.red,
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
                                              color: Colors.red,
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
                                      fontWeight: FontWeight.bold, fontSize: 16,  color: Colors.orange,
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
                                              color: Colors.orange,
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
                                              color: Colors.orange,
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
                                              color: Colors.orange,
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
                                              color: Colors.orange,
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
                                              color: Colors.orange,
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
                          )*/
