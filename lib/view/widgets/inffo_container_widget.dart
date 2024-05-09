import 'package:flutter/material.dart';

class InfoWidget extends StatelessWidget {
  final String txt;
  final String icons;
  const InfoWidget({super.key, required this.txt, required this.icons});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width,
      height: 60,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8), color: Colors.white),
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            width: 37,
            height: 37,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: const Color(0xff0008B3),
            ),
            child: Image.asset(icons),
          ),
          Text(
            txt,
            style: const TextStyle(
                fontFamily: 'poppins',
                fontSize: 17,
                fontWeight: FontWeight.w500),
          )
        ],
      ),
    );
  }
}
