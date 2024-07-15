import 'package:flutter/material.dart';

class NavNextButton extends StatelessWidget {
  NavNextButton({super.key, required this.action});

  String action = '';

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.popAndPushNamed(context, action);
      },
      child: Container(
        height: 50,
        width: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: Color(0xFF009A03),
        ),
        child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.navigate_before,
                  color: Colors.white,
                  size: 30,
                ),
                Text('التالي',
                    style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white)),
              ],
            )),
      ),
    );
  }
}
