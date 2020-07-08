import 'package:flutter/material.dart';
import 'package:projet_loto/providers/data_provider.dart';
import 'package:projet_loto/widgets/resultat_item.dart';
import 'package:provider/provider.dart';

class HistoriqueIvoire extends StatefulWidget {
  static const routeName = '/historiqueivoire';

  @override
  _HistoriqueIvoireState createState() => _HistoriqueIvoireState();
}

class _HistoriqueIvoireState extends State<HistoriqueIvoire> {
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
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: EdgeInsets.all(8),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      IconButton(
                          icon: Icon(
                            Icons.arrow_back,
                            size: 25,
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          }),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        "Historique résultats",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height / 1.8,
                    child: (_isLoading)
                        ? Center(child: Text('Waiting'))
                        : RefreshIndicator(
                            onRefresh: () => refreshData(context),
                            child: ListView.builder(
                                itemCount: lotto.length,
                                itemBuilder: (ctx, i) =>
                                    ChangeNotifierProvider.value(
                                      value: lotto[i],
                                      child: ResultatItem(),
                                    )),
                          ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
