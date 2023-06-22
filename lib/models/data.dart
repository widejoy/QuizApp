import 'package:quiz_app/models/set_values.dart';
import 'models_question.dart';

//= SetValues.fetchData() as List<BluePrint>;

//SetValues.fetchData().then((value){qustions = value});

class Getvalues {
  List<BluePrint> enteredvalue() {
    List<BluePrint> questions = [];
    SetValues.fetchData().then((value) => questions = value);
    return questions;
  }
}

Getvalues dataobj = Getvalues();
List<BluePrint> qustions = dataobj.enteredvalue();
