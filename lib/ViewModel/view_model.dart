//TODO: add your view model class here
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../Model/model.dart';

class SchoolConsumer extends ChangeNotifier {
  School? schoolMap;
  void schoolInfo() async {
    final String response =
        await rootBundle.loadString('lib/JSONdata/SchoolData.json');
    print(response);
    final data = await json.decode(response);

    schoolMap = School.fromJson(data[0]);
    notifyListeners();
  }
}
