import 'package:flutter/material.dart';
import 'package:flutter_page_indicator/flutter_page_indicator.dart';

class FirstPage extends StatefulWidget {
  static const routeName = '/firstpge';
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  int _index = 1;

  double size = 12.0;
  double activeSize = 12.0;

  PageController controller;

  @override
  void initState() {
    controller = new PageController();
    super.initState();
  }

  @override
  void didUpdateWidget(FirstPage oldWidget) {
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    var children = <Widget>[
      Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
              image: AssetImage("asset/books.jpg"),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  Colors.black54.withOpacity(0.6), BlendMode.darken)),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            //Icon(Icons.laptop_mac, color:Colors.white, size: 50,),
            Center(
              child: Text(
                "Apprenez en toute confiance",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 35,
                    fontFamily: 'BAARS',
                    fontWeight: FontWeight.w700),
              ),
            ),
            Column(
              children: <Widget>[
                Container(
                  height: 140,
                  width: 320,
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(133, 136, 241, 0.7),
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Icon(
                              Icons.find_in_page,
                              size: 25,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'Trouvez',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Text(
                          'votre perle rare parmi des professeurs diplomés, évalués et disponibles.',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w300,
                              fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Container(
                  height: 140,
                  width: 320,
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(133, 136, 241, 0.7),
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Icon(
                              Icons.check_circle,
                              size: 25,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'Réservez',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Text(
                          "votre cours aujourd'hui. les professeurs repondent dans la journée.",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w300,
                              fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Container(
                  height: 140,
                  width: 320,
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(133, 136, 241, 0.7),
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Icon(
                              Icons.favorite,
                              size: 25,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'En toute liberté',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Text(
                          'Le premier cours est offert. Vous travaillez en direct au meilleur prix et sans intermédiaire.',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w300,
                              fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: Colors.white,
            image: DecorationImage(
                image: AssetImage("asset/little-houses.jpg"),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                    Colors.black54.withOpacity(0.6), BlendMode.darken))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Icon(Icons.location_on,
                color: Color.fromRGBO(133, 136, 241, 0.7), size: 80),
            Center(
              child: Text(
                " Apprenez d'où vous voulez",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 35,
                    fontFamily: 'BAARS',
                    fontWeight: FontWeight.w700),
              ),
            ),
          ],
        ),
      ),
      Container(
        height: double.infinity,
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            FractionallySizedBox(
              alignment: Alignment.center,
              child: Center(
                child: Text(
                  "Apprenez ce que vous voulez",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 35,
                      fontFamily: 'BAARS',
                      fontWeight: FontWeight.w700),
                ),
              ),
            ),
            FractionallySizedBox(
              alignment:
                  Alignment.lerp(Alignment.center, Alignment.bottomCenter, 0.7),
              heightFactor: 0.08,
              widthFactor: 0.6,
              child: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: customButton(context),
              ),
            )
          ],
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
            image: AssetImage("asset/book-4.jpg"),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
                Colors.black54.withOpacity(0.6), BlendMode.darken),
          ),
        ),
      ),
    ];

    return Scaffold(
        body: new Column(
      children: <Widget>[
        Expanded(
            child: new Stack(
          children: <Widget>[
            new PageView(
              controller: controller,
              children: children,
            ),
            new Align(
              alignment: Alignment.bottomCenter,
              child: new Padding(
                padding: new EdgeInsets.only(bottom: 20.0),
                child: new PageIndicator(
                  layout: PageIndicatorLayout.WARM,
                  color: Colors.black,
                  size: size,
                  activeSize: activeSize,
                  controller: controller,
                  space: 5.0,
                  count: children.length,
                ),
              ),
            )
          ],
        ))
      ],
    ));
  }

  Widget customButton(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(40)),
      child: Container(
        width: 250,
        height: 40.0,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [Colors.deepPurple, Color.fromRGBO(133, 136, 241, 1)]),
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: () {},
            child: Center(
              child: Text(
                'Commencer',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 20),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget customText(String data,
      {double size, FontWeight weight, Color color: Colors.white}) {
    return Text(
      data,
      style: TextStyle(
        color: color,
        fontWeight: weight,
        fontSize: size,
        fontFamily: 'BAARS',
      ),
      textAlign: TextAlign.center,
    );
  }
}
