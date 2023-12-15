import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ButtonWidget extends StatelessWidget {
  String title;
  Function() onPressed;
  ButtonWidget({super.key, required this.onPressed, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 220,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.black)),
      child: TextButton.icon(
          onPressed: onPressed,
          icon: Icon(
            Icons.chrome_reader_mode_outlined,
            color: Colors.red,
          ),
          label: Text(
            title,
            style: TextStyle(color: Colors.black),
          )),
    );
  }
}
