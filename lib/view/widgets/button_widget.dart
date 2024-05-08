import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final String txt;
  final void Function()? onPressed;
  const ButtonWidget({super.key, required this.txt, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        elevation: .2,
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: .5, color: Colors.grey),
          borderRadius: BorderRadius.circular(5),
        ),
      ),
      onPressed: onPressed,
      child: Text(
        txt,
        style: const TextStyle(fontFamily: 'poppins', color: Colors.black),
      ),
    );
  }
}
