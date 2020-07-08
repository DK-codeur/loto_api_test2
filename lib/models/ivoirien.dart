import 'package:flutter/foundation.dart';

/*class ResultatIvoirien {
  List<Data> data;

  ResultatIvoirien({this.data});

   ResultatIvoirien.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = new List<Data>();
      json['data'].forEach((v) {
        data.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson(json) {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  String lotoTitle;
  String lotoDate;
  String number1;
  String number;

  Data({this.lotoTitle, this.lotoDate, this.number1, this.number});

  Data.fromJson(Map<String, dynamic> json) {
    lotoTitle = json['loto_title'];
    lotoDate = json['loto_date'];
    number1 = json['number1'];
    number = json['number'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['loto_title'] = this.lotoTitle;
    data['loto_date'] = this.lotoDate;
    data['number1'] = this.number1;
    data['number'] = this.number;
    return data;
  }
}*/

























class ResultatIvoirien {
  final String lotoTitle;
  final String lotoDate;
  final String number;
  final String number1;

  ResultatIvoirien({@required this.lotoTitle,  @required this.lotoDate,  @required this.number, @required this.number1});

  factory ResultatIvoirien.fromJson(Map<String, dynamic> json) => ResultatIvoirien(
    lotoTitle: json['loto_title'],
    lotoDate: json['loto_date'],
    number: json['number'],
    number1: json['number1'],
   );

  static List<ResultatIvoirien> fromList(List list) {
    List<ResultatIvoirien> resultats = [];
    for(Map<String,dynamic> json in list) {
      resultats.add(ResultatIvoirien.fromJson(json));
    }
    return resultats;
    print(resultats);
  }
}