import 'package:quiz_app/models/set_values.dart';
import 'models_question.dart';

List<BluePrint> qustions = [];

SetValues.fetchData.then((i){qustions = i})