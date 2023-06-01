import 'package:flutter/material.dart';

class Iconcontent extends StatelessWidget {
  final IconData? icon;
  final String? label;

  Iconcontent({this.icon, this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80.0,
        ),
        const SizedBox(
          height: 15.0,
        ),
        Text(
          label!,
          style: const TextStyle(
            fontSize: 18,
            color: Color(0xFF8D8E98),
          ),
        )
      ],
    );
  }
}
