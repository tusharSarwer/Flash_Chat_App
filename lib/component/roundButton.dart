// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, use_key_in_widget_constructors, avoid_print, prefer_const_constructors_in_immutables, file_names

import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {
  // const RoundButton({
  //   Key? key, required this.color,required this.onPressed,required this.title,
  // }) : super(key: key);
  RoundButton({required this.color,required this.onPressed,required this.title});

  final Color color;
  final Function()? onPressed;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: color,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: onPressed,
          minWidth: 200.0,
          height: 42.0,
          child: Text(
            title,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}