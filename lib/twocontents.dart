import 'package:flutter/material.dart';
class TwoContents extends StatelessWidget {
  TwoContents({@required this.iecon, @required this.gender});
  final Icon iecon;
  final Text gender;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        iecon,
        SizedBox(
          height: 10,
        ),
          gender,
      ],
    );
  }
}