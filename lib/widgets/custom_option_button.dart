import 'package:flutter/material.dart';

class CustomOptionButton extends StatelessWidget {
  CustomOptionButton({super.key, required this.text});

  String text = '';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 18.0),
      child: Container(
        height: 70,
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(2, 5), // changes position of shadow
          ),
        ], borderRadius: BorderRadius.circular(15), color: Colors.white),
        child: Center(
            child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            text,
            style: TextStyle(
                fontSize: 17,
                color: Color(0xAB0A0A0A),
                fontWeight: FontWeight.bold),
          ),
        )),
      ),
    );
  }
}
