import 'package:app_perguntas/answer.dart';
import 'package:app_perguntas/question.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';

class Quest extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int choseQuestion;
  final void Function(int) afterAnswer;
  const Quest(
      {required this.questions,
      required this.afterAnswer,
      required this.choseQuestion,
      super.key});
  bool get haveChosenQuestion {
    return choseQuestion < questions.length;
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, Object>> answers = haveChosenQuestion
        ? questions[choseQuestion]['respostas'] as List<Map<String, Object>>
        : [];
    return Column(children: [
      Question((questions[choseQuestion]['texto']) as String),
      ...answers
          .map((element) => Answer(
                element['texto'] as String,
                () => afterAnswer(element['nota'] as int),
              ))
          .toList()
    ]);
  }
}
