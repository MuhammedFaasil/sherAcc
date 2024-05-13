import 'package:flutter/material.dart';

class AppSettingsWidget extends StatelessWidget {
  final String txt;
  final void Function()? onPressed;
  const AppSettingsWidget({super.key, required this.txt, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 15),
      height: 40,
      width: MediaQuery.sizeOf(context).width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8), color: Colors.white),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            txt,
            style: const TextStyle(
                fontFamily: 'poppins', fontWeight: FontWeight.w600),
          ),
          IconButton(
            onPressed: onPressed,
            icon: const Icon(
              Icons.arrow_forward_ios,
              // color: Colors.black,
            ),
          )
        ],
      ),
    );
  }
}
