import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';

class Result extends StatelessWidget {
  final void Function() reset;
  final int total;
  final String title;
  const Result(this.reset, this.total, this.title, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const Center(
          child: Text(
        'Parabéns',
        style: TextStyle(
          fontSize: 28,
        ),
      )),
      Center(
        child: ElevatedButton(onPressed: reset, child: Text(title)),
      ),
      Center(
        child: Text(total.toString()),
      )
    ]);
  }
}
