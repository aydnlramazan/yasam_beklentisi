import 'package:flutter/material.dart';

class CinsiyetColumn extends StatelessWidget {
  final IconData cinsiyet;
  final String bilgi;
  CinsiyetColumn({required this.cinsiyet, required this.bilgi});
  @override
  Widget build(BuildContext contex) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Icon(
          cinsiyet,
          size: 66,
        ),
        SizedBox(height: 10),
        Text(
          bilgi,
          style: TextStyle(fontSize: 24),
        ),
      ],
    );
  }
}
