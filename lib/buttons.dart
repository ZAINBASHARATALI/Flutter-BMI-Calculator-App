import 'package:flutter/material.dart';
class MyButton extends StatelessWidget {
  // ignore: non_constant_identifier_names
  MyButton({@required this.icn,@required this.Onpressing});
  final Icon icn;
  // ignore: non_constant_identifier_names
  final Function Onpressing;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: Onpressing,
      child: CircleAvatar(
        backgroundColor: Colors.white24,
        radius: 27,
        child: icn
      ),
    );
  }
}