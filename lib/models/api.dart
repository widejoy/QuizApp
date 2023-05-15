import 'dart:convert' as convert;

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_html/flutter_html.dart';
import 'package:quiz_app/models/data.dart';

class Api {
  static Future<void> fetchData() async {
    final response = await http.get(Uri.parse(
        'https://opentdb.com/api.php?amount=5&category=15&type=multiple'));
    List<String> questions =[];
    if (response.statusCode == 200) {
      // API call was successful, parse the JSON response
      final decoded = convert.jsonDecode(response.body);
      
        var results = decoded['results'][0]['question'];
        var question = Html(data: results).data;
        questions.add(question!);
        
      print(questions);

    }
    // do something with the results
    else {
      // API call failed, handle the error
      print('Failed to load trivia questions');
    }
  }
}
