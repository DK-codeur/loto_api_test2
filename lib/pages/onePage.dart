import 'package:flutter/material.dart';
import 'package:projet_loto/pages/homePage.dart';

class OnePage extends StatefulWidget {

  static const routeName = '/onepage';


  @override
  _OnePageState createState() => _OnePageState();
}

class _OnePageState extends State<OnePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Colors.white,
            image: DecorationImage(
                image: AssetImage("asset/v.jpg"),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                    Colors.black54.withOpacity(0.6), BlendMode.darken)),
          ),
          child: Column(
            children: <Widget>[
              SizedBox(height: 100,),
              Container(
               margin: EdgeInsets.only(left: 80, right: 80),
                child: Row(
                  children: <Widget>[
                    Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                          color: Colors.orangeAccent,
                        shape: BoxShape.circle
                      ),
                      child: Center(
                          child: Text('5', style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18
                          ),)
                      )
                    ),
                    SizedBox(width: 10,),
                    Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                          color: Colors.orangeAccent,
                          shape: BoxShape.circle
                      ),
                        child: Center(
                            child: Text('12', style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18
                            ),)
                        )
                    ),
                    SizedBox(width: 10,),
                    Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                          color: Colors.orangeAccent,
                          shape: BoxShape.circle
                      ),
                        child: Center(
                            child: Text('1', style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18
                            ),)
                        )
                    ),
                    SizedBox(width: 10,),
                    Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                          color: Colors.orangeAccent,
                          shape: BoxShape.circle
                      ),
                        child: Center(
                            child: Text('18', style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18
                            ),)
                        )
                    ),
                    SizedBox(width: 10,),
                    Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            color: Colors.orangeAccent,
                            shape: BoxShape.circle
                        ),
                        child: Center(
                            child: Text('18', style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18
                            ),)
                        )
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Container(
                margin: EdgeInsets.only(left: 100, right: 100),
                child: Center(
                  child: Row(
                    children: <Widget>[
                      Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                              color: Colors.orangeAccent,
                              shape: BoxShape.circle
                          ),
                          child: Center(
                              child: Text('5', style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18
                              ),)
                          )
                      ),
                      SizedBox(width: 10,),
                      Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                              color: Colors.orangeAccent,
                              shape: BoxShape.circle
                          ),
                          child: Center(
                              child: Text('12', style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18
                              ),)
                          )
                      ),
                      SizedBox(width: 10,),
                      Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                              color: Colors.orangeAccent,
                              shape: BoxShape.circle
                          ),
                          child: Center(
                              child: Text('1', style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18
                              ),)
                          )
                      ),
                      SizedBox(width: 10,),
                      Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                              color: Colors.orangeAccent,
                              shape: BoxShape.circle
                          ),
                          child: Center(
                              child: Text('18', style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18
                              ),)
                          )
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 150,),
              Center(
                child: Text(
                  "Bienvenue sur Loto gagnant",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white, fontSize: 35, fontFamily: 'BAARS', fontWeight: FontWeight.w700),
                ),
              ),
              SizedBox(height: 100,),
          ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(40.0)),
            child: Container(
              width: 250,
              height: 50.0,
              decoration: BoxDecoration(
                  color: Colors.orange,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      offset: Offset(0.0, 1.5),
                      blurRadius: 1.5,
                    ),
                  ]),
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context)=> HomePage()
                      ));
                    },
                    child: Center(
                      child:
                      Text("Commencer",style: TextStyle(
                        fontSize: 20, fontWeight: FontWeight.w700,
                      ), ),
                    )),
              ),
            ),
          ),
            ],
          ),
        ),
      ),
    );
  }
}


/*  Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Colors.white,
            image: DecorationImage(
                image: AssetImage("asset/e.jpg"),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                    Colors.black54.withOpacity(0.6), BlendMode.darken)),
          ),
          child: Column(
            mainAxisAlignment:MainAxisAlignment.spaceEvenly ,
            children: <Widget>[
              Icon(Icons.laptop_mac, color:Colors.white, size: 80,),
              Center(
                child: Text(
                  "Bienvenue sur Champi des Tics",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white, fontSize: 35, fontFamily: 'BAARS', fontWeight: FontWeight.w700),
                ),
              ),
            ],
          ),
        ),*/