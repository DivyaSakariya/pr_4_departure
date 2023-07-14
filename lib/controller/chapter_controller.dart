import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../model/chapter_model.dart';

class ChapterController extends ChangeNotifier {
  List<ChapterModel> allChapter = [];

  ChapterController() {
    loadChapter();
  }

  loadChapter() async {
    String res = await rootBundle.loadString('assets/json_file/chapters.json');

    List allData = jsonDecode(res);

    print("===============================");
    print(allData);
    print("===============================");

    allChapter = allData.map((e) => ChapterModel.fromMap(data: e)).toList();

    print("===============================");
    print(allChapter);
    print("===============================");
    notifyListeners();
  }
}
