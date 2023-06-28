import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:quiz_app/models/models_question.dart';
import 'package:html_unescape/html_unescape.dart';

class SetValues {
  static Future<List<BluePrint>> fetchData() async {
    try {
      final response = await http.get(
        Uri.https(
          'opentdb.com',
          '/api.php',
          {'amount': '5', 'category': '15', 'type': 'multiple'},
        ),
      );

      if (response.statusCode == 200) {
        final decoded = jsonDecode(response.body);

        List<BluePrint> questions = [];
        String question;
        List<dynamic> options = [];
        List<String> optionsString = [];

        final data = decoded["results"];

        for (var element in data) {
          question = HtmlUnescape().convert(element["question"]);
          options = element["incorrect_answers"];
          options.insert(0, element["correct_answer"]);
          optionsString =
              options.map((e) => HtmlUnescape().convert(e.toString())).toList();

          questions.add(
            BluePrint(question, optionsString),
          );
        }

        return questions;
      } else {
        throw Exception('Failed to fetch data');
      }
    } catch (e) {
      throw Exception('Error: $e');
    }
  }
}
