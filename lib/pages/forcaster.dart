import 'package:flutter/material.dart';

class ForcasterPage extends StatelessWidget {

  static const routeName = '/forcaster';

  List<String> images = [
    'asset/onze.jpg',
    'asset/neuf.jpg',
    'asset/huit.jpg',
    'asset/douze.jpg',
    'asset/six.jpg',
    'asset/un.jpg',
    'asset/deux.jpg',
    'asset/sept.jpg',
    'asset/cink.jpg',
    'asset/tim.jpg',
    'asset/trois.jpg',
    'asset/tun.jpg',
    'asset/trente.jpg',
    'asset/toi.jpg',
    'asset/tup.jpg',
    'asset/dix(1).jpg',
    'asset/treize.jpg',

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 2,
        centerTitle: true,
        title: Text('Forcaster', style: TextStyle(
            color: Colors.black
        ),),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black, size: 28,),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: Colors.grey.withOpacity(0.2),
            child: Column(
              children: <Widget>[
                SizedBox(height: 20,),
                Text('Derniers tirages', style: TextStyle(
                    fontSize: 20, fontWeight: FontWeight.bold
                ),),
                SizedBox(height: 20,),
                Container(
                  height: MediaQuery.of(context).size.height/1.34,
                  child: ListView.builder(
                    itemCount: images.length,
                      itemBuilder: (context, i) {
                      return Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Card(
                          child: Container(
                            height: MediaQuery.of(context).size.height/2,
                            width: MediaQuery.of(context).size.height/1.34,
                            decoration: BoxDecoration(
                              //color: Colors.orange,
                              borderRadius: BorderRadius.circular(30),
                              image: DecorationImage(
                                  image: AssetImage(images[i]),
                                fit: BoxFit.cover
                              )
                            ),
                          ),
                        ),
                      );
                    }
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

