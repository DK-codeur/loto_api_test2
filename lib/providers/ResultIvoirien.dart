import 'package:http/http.dart' as http;

import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:projet_loto/models/ghana.dart';
import 'package:projet_loto/models/ivoirien.dart';
import 'package:projet_loto/utils/Settings.dart';
import 'package:projet_loto/utils/Status.dart';

class ResultIvoirien with ChangeNotifier {

  final String publicLink = 'http://192.168.43.179:8090/flutterTest/getData.php';

  List<Loto> _resto = [];

  List<Loto> get resto {
    return [..._resto];
  }


  Future<void> fetchAndSetResto() async {
    final url = publicLink;

    try {
      final response = await http.get(url);
      print('get:' + '${response.statusCode}');
      final extractedData = json.decode(response.body);
      print(extractedData);

      if (extractedData == null) {
        return;
      }

      final List<Loto> loadedResto = [];
      for (var i = 0; i < extractedData.length; i++) {
        var restoItem = Loto.fromJson(extractedData[i]);
        loadedResto.add(restoItem);
      }

      _resto = loadedResto;
      notifyListeners();
      print(_resto);

      print(['all Instance of Resto']);
    } catch (error) {
      throw error;
    }
  }
}


