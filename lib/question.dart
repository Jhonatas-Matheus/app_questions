import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';

class Question extends StatelessWidget {
  final String text;
  const Question(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: const EdgeInsets.all(10),
        child: Text(
          text,
          style: const TextStyle(fontSize: 28),
          textAlign: TextAlign.center,
        ));
  }
}
