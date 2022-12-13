import 'dart:io';

import 'package:app_perguntas/answer.dart';
import 'package:app_perguntas/quest.dart';
import 'package:app_perguntas/question.dart';
import 'package:app_perguntas/result.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(const PerguntaApp());

// O underline significa que é um a classe privada.
class _PerguntaAppState extends State<PerguntaApp> {
  var _choseQuestion = 0;
  var _totalScore = 0;
  final List<Map<String, Object>> _questions = const [
    {
      'texto': 'Qual é a sua cor favorita?',
      'respostas': [
        {'texto': 'Preto', 'nota': 10},
        {'texto': 'Vermelho', 'nota': 5},
        {'texto': 'Verde', 'nota': 3},
        {'texto': 'Azul', 'nota': 1},
      ],
    },
    {
      'texto': 'Qual é o seu animal favorito?',
      'respostas': [
        {'texto': 'Coelho', 'nota': 10},
        {'texto': 'Cobra', 'nota': 5},
        {'texto': 'Cavalo', 'nota': 3},
        {'texto': 'Elefante', 'nota': 1},
      ],
    },
    {
      'texto': 'Qual o seu jogo favorito?',
      'respostas': [
        {'texto': 'League Of Legends', 'nota': 10},
        {'texto': 'Dota2', 'nota': 5},
        {'texto': 'Valorant', 'nota': 3},
        {'texto': 'Counter-Striek: Global Ofensive', 'nota': 1},
      ],
    },
  ];
  void _answer(int nota) {
    if (haveChosenQuestion) {
      setState(() {
        _choseQuestion++;
        _totalScore += nota;
      });
      print(_choseQuestion);
    }
  }

  void reset() {
    setState(() {
      _totalScore = 0;
      _choseQuestion = 0;
    });
  }

  bool get haveChosenQuestion {
    return _choseQuestion < _questions.length;
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, Object>> answers = haveChosenQuestion
        ? _questions[_choseQuestion]['respostas'] as List<Map<String, Object>>
        : [];
    print(answers);
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: const Text('Questions Jhon'),
            ),
            body: haveChosenQuestion
                ? Center(
                    child: Quest(
                      questions: _questions,
                      afterAnswer: _answer,
                      choseQuestion: _choseQuestion,
                    ),
                  )
                : Result(reset, _totalScore, 'Resetar')));
  }
}

class PerguntaApp extends StatefulWidget {
  const PerguntaApp({super.key});
  @override
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
