import 'package:flutter/material.dart';
import 'constant.dart';

class RusableCard extends StatelessWidget {
  final Color? color;
  final Widget? Cardchild;
  final VoidCallback? onTab;
  RusableCard({this.color, this.Cardchild, this.onTab});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTab,
      child: Container(
        margin: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: color ?? KactiveCardColor,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Cardchild,
      ),
    );
  }
}
