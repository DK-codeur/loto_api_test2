import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'package:projet_loto/pages/firstpage.dart';
// import 'package:projet_loto/pages/forcaster.dart';
// import 'package:projet_loto/pages/historyIvoire.dart';
// import 'package:projet_loto/pages/historyPage.dart';
// import 'package:projet_loto/pages/homePage.dart';
import 'package:projet_loto/pages/onePage.dart';
// import 'package:projet_loto/pages/pipii.dart';
// import 'package:projet_loto/pages/resultatPage.dart'; µ

import 'package:projet_loto/providers/ResultIvoirien.dart';
import 'package:provider/provider.dart';

// import 'pages/pipo.dart';03
// import 'pages/profPage.dart';
import 'providers/data_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    // DeviceOrientation.portraitDown, http://www.rssmix.com/u/11510835/rss.xml
  ]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (ctx) => ResultIvoirien()),
        ChangeNotifierProvider(create: (ctx) => DataProviders()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        debugShowCheckedModeBanner: false,
        home: OnePage(),
        /*initialRoute: FirstPage.routeName,
        routes: {
          ChargerPage.routeName: (ctx) => ChargerPage(),
          OnePage.routeName: (ctx) => OnePage(),
          HomePage.routeName: (ctx) => HomePage(),
          //ResultatsPage.routeName: (ctx) => ResultatsPage(),
          ForcasterPage.routeName: (ctx) => ForcasterPage(),
          HistoriquePage.routeName: (ctx) => HistoriquePage(),
          HistoriqueIvoire.routeName: (ctx) => HistoriqueIvoire(),
          Pipo.routeName: (ctx) => Pipo(),
          Pipiiiiii.routeName: (ctx) => Pipiiiiii(),
          /*Profils.routeName: (ctx) => Profils(),
          QuestionPage.routeName: (ctx) => QuestionPage(),
          ResultatPage.routeName: (ctx) => ResultatPage(),*/
        },*/
      ),
    );
  }
}

class ChargerPage extends StatefulWidget {
  static const routeName = '/';

  @override
  _ChargerPageState createState() => _ChargerPageState();
}

class _ChargerPageState extends State<ChargerPage> {
  // bool init = true;

  // @override
  // void didChangeDependencies() {
  //   // TODO: implement didChangeDependencies
  //   super.didChangeDependencies();
  //   if (init) {
  //     initialize();
  //   }
  // }

  // initialize() async {
  //   init = false;
  //   final provider = Provider.of<ResultIvoirien>(context, listen: false);
  //   try {
  //     await provider.fetchAndSetResto();
  //     Navigator.pushNamed(context, OnePage.routeName);
  //   } catch (e) {
  //     print(e);
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CircularProgressIndicator(
          backgroundColor: Colors.orange,
        ),
      ),
    );
  }
}
