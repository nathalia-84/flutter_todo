
import 'package:flutter/material.dart';
import 'package:flutter_todo/components/task.dart';

class Difficulty extends StatelessWidget {
  const Difficulty({
    Key? key,
    required this.widget,
  }) : super(key: key);

  final Task widget;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(5, (index) {
        return Icon(
          Icons.star,
          size: 15,
          color: (widget.dificuldade > index)
              ? Colors.blue
              : Colors.blue[100],
        );
      }),
    );
  }
}