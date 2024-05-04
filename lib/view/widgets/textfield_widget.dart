import 'package:flutter/material.dart';

class TextfieldWidget extends StatelessWidget {
  final String icons;
  final Widget? iconsSufix;
  final String txt;
  const TextfieldWidget(
      {super.key, required this.icons, required this.txt, this.iconsSufix});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Container(
        height: 55,
        decoration: const BoxDecoration(boxShadow: [
          BoxShadow(
            offset: Offset(0, 7),
            color: Color.fromARGB(255, 222, 222, 222),
            spreadRadius: .1,
            blurRadius: 9,
          )
        ]),
        child: TextField(
          decoration: InputDecoration(
              prefixIcon: Image.asset(icons),
              suffixIcon:iconsSufix,
              labelText: txt,
              fillColor: Colors.white,
              filled: true,
              border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(10))),
        ),
      ),
    );
  }
}
