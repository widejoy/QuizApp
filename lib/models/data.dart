import 'package:quiz_app/models/set_values.dart';
import 'models_question.dart';

List<BluePrint> questions = [];

class Getvalues {
  Future<List<BluePrint>> fetchQuestions() async {
    questions = await SetValues.fetchData();
    return questions;
  }
}

void fetchDataAndProcess() async {
  Getvalues dataobj = Getvalues();
  questions = await dataobj.fetchQuestions();
}
