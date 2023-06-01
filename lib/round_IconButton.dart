import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  final IconData? icon;
  final VoidCallback? onPressed;
  RoundIconButton({required this.icon, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
        // ignore: sort_child_properties_last
        child: Icon(icon),
        constraints: const BoxConstraints.tightFor(
          width: 56.0,
          height: 56.0,
        ),
        elevation: 6.0,
        fillColor: const Color(0xFF4C4F5E),
        shape: const CircleBorder(),
        onPressed: onPressed);
  }
}
