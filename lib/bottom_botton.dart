import 'package:flutter/material.dart';

import 'constant.dart';

class BottomBotton extends StatefulWidget {
  final Function onTap;
  final String buttonTitle;

  BottomBotton({required this.buttonTitle, required this.onTap});

  @override
  State<BottomBotton> createState() => _BottomBottonState();
}

class _BottomBottonState extends State<BottomBotton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => widget.onTap,
      child: Container(
        color: buttomCardColor,
        margin: const EdgeInsets.only(top: 10.0),
        padding: EdgeInsets.only(bottom: 20.0),
        width: double.infinity,
        height: bottom_height,
        child: Center(
            child: Text(
          widget.buttonTitle,
          style: KlargeBottonTextStyle,
        )),
      ),
    );
  }
}
