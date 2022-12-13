import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';

class Answer extends StatelessWidget {
  final String answer;
  final void Function() onChose;
  const Answer(this.answer, this.onChose, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blueAccent,
              foregroundColor: Colors.white),
          onPressed: onChose,
          child: Text(
            answer,
          )),
    );
  }
}
