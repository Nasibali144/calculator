import 'package:flutter/material.dart';

class ButtonView extends StatelessWidget {
  const ButtonView(
      {super.key,
      required this.action,
      this.color = Colors.orange,
      this.title,
      this.icon});

  final String? title;
  final Color color;
  final IconData? icon;
  final void Function() action;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: action,
        child: Container(
          alignment: Alignment.center,
          child: title != null
              ? Text(
                  title!,
                  style: TextStyle(
                    fontSize: 45,
                    color: color,
                  ),
                )
              : Icon(
                  icon,
                  size: 45,
                  color: color,
                ),
        ),
      ),
    );
  }
}
