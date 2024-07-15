import 'package:flutter/material.dart';

class NavPrevButton extends StatelessWidget {
  NavPrevButton({super.key, required this.action});

  String action = '';

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushReplacementNamed(context, action);
      },
      child: Container(
        height: 50,
        width: 150,
        decoration: BoxDecoration(
          border: Border.all(
            color: Color(0xFF009A03),
          ),
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: Color(0xFFFFFFFF),
        ),
        child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('السابق',
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF009A03),
                    )),
                Icon(
                  Icons.navigate_next,
                  color: Color(0xFF009A03),
                  size: 30,
                ),
              ],
            )),
      ),
    );
  }
}
