import 'dart:convert' as convert;

import 'package:http/http.dart' as http;
import 'package:flutter_html/flutter_html.dart';
import 'package:quiz_app/models/models_question.dart';

class SetValues {
  static Future<List<BluePrint>> fetchData() async {
    final response = await http.get(
      Uri.https(
        'opentdb.com',
        '/api.php',
        {'amount': '5', 'category': '15', 'type': 'multiple'},
      ),
    );

    final listdataencoded = Html(
      data: response.body,
    ).data;
    final decoded = convert.jsonDecode(listdataencoded!);

    List<BluePrint> qustions = [];
    String question;
    List<dynamic> options = [];
    List<String> optionsstring = [];

    final data = decoded["results"];

    for (var element in data) {
      question = element["question"];
      options = element["incorrect_answers"];
      options.insert(
        0,
        element["correct_answer"],
      );
      optionsstring = options.map((e) => e.toString()).toList();

      qustions.add(
        BluePrint(question, optionsstring),
      );
    }
    return qustions;
  }
}
