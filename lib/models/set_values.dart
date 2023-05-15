import 'dart:convert' as convert;

import 'package:http/http.dart' as http;
import 'package:flutter_html/flutter_html.dart';
import 'package:quiz_app/models/models_question.dart';


class SetValues{

static Future<List<BluePrint>> fetchData() async {
    final response = await http.get(Uri.parse(
        'https://opentdb.com/api.php?amount=5&category=15&type=multiple'));
    const qustions = [];
    if (response.statusCode == 200) {
      final decoded = convert.jsonDecode(response.body);

      var results = decoded['results'][0]['question'];
      var question1 = Html(data: results).data;
      List<String> answers1 = decoded['results'][0]['incorrect_answers'];
      answers1 = Html(data: results).data as List<String>;

      String firstIndex = decoded['results'][0]['correct_answer'];
      firstIndex = Html(data: results).data!;

      answers1.insert(0, firstIndex);

      results = decoded['results'][1]['question'];
      var question2 = Html(data: results).data;
      List<String> answers2 = decoded['results'][1]['incorrect_answers'];
      answers2 = Html(data: results).data as List<String>;

      firstIndex = decoded['results'][1]['correct_answer'];
      firstIndex = Html(data: results).data!;

      answers2.insert(0, firstIndex);

      
      results = decoded['results'][2]['question'];
      var question3 = Html(data: results).data;
      List<String> answers3 = decoded['results'][2]['incorrect_answers'];
      answers3 = Html(data: results).data as List<String>;

      firstIndex = decoded['results'][2]['correct_answer'];
      firstIndex = Html(data: results).data!;

      answers3.insert(0, firstIndex);

      results = decoded['results'][3]['question'];
      var question4 = Html(data: results).data;
      List<String> answers4 = decoded['results'][3]['incorrect_answers'];
      answers4 = Html(data: results).data as List<String>;

      firstIndex = decoded['results'][3]['correct_answer'];
      firstIndex = Html(data: results).data!;

      answers4.insert(0, firstIndex);

      results = decoded['results'][4]['question'];
      var question5 = Html(data: results).data;
      List<String> answers5 = decoded['results'][4]['incorrect_answers'];
      answers5 = Html(data: results).data as List<String>;

      firstIndex = decoded['results'][4]['correct_answer'];
      firstIndex = Html(data: results).data!;

      answers5.insert(0, firstIndex);

      var qustions = [

        BluePrint(question1!,answers1),
        BluePrint(question2!,answers2),
        BluePrint(question3!,answers3),
        BluePrint(question4!,answers4),
        BluePrint(question5!,answers5),
      ];
      return qustions;
          

   
  }
}
}