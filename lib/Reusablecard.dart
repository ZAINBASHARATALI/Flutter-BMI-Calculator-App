import 'package:flutter/material.dart';
class ReusableCard extends StatelessWidget {
  @override
  ReusableCard({@required this.clor, this.childcard,this.onPress});
  final Color clor;
  final Widget childcard;
  final Function onPress;
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: childcard,
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: clor,
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
