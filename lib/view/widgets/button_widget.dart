import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final String txt;
  final void Function()? onPressed;
  final Color? backgroundColor;
  final Color? color;
  const ButtonWidget(
      {super.key,
      required this.txt,
      this.onPressed,
      this.backgroundColor,
      this.color});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        elevation: .2,
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: .5, color: Colors.grey),
          borderRadius: BorderRadius.circular(5),
        ),
      ),
      onPressed: onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            txt,
            style: TextStyle(fontFamily: 'poppins', color: color),
          ),
        ],
      ),
    );
  }
}
