import 'package:flutter/material.dart';

class ThreeButtons extends StatelessWidget {
  final String txt;
  final String iconUrl;
  final void Function()? onPressed;
  const ThreeButtons(
      {super.key, required this.txt, required this.iconUrl, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
            ),
            backgroundColor: const Color(0xff0008B3),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))),
        onPressed: () {},
        child: Row(
          children: [
            Image.asset(iconUrl),
            const SizedBox(
              width: 5,
            ),
            Text(
              txt,
              style: const TextStyle(
                  fontFamily: 'poppins', color: Colors.white, fontSize: 16),
            )
          ],
        ));
  }
}
