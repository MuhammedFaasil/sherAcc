import 'package:flutter/material.dart';

class AppbarWidgget extends StatelessWidget {
  final String headTxt;
  final void Function()? onPressed;
  const AppbarWidgget({super.key, required this.headTxt, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff0008B3),
      height: 100,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          IconButton(
              onPressed: onPressed,
              icon: const Icon(
                Icons.arrow_back_ios_new_rounded,
                color: Colors.white,
              )),
          const SizedBox(
            width: 110,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                headTxt,
                style: const TextStyle(
                    fontFamily: 'poppins',
                    fontSize: 19,
                    color: Colors.white,
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 8,
              )
            ],
          ),
        ],
      ),
    );
  }
}
