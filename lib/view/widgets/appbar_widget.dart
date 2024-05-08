import 'package:flutter/material.dart';

class AppbarWidgget extends StatelessWidget {
  final String headTxt;
  final void Function()? onPressed;
  const AppbarWidgget({super.key, required this.headTxt, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomCenter,
      color: const Color(0xff0008B3),
      height: 100,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: onPressed,
                  child: const Icon(
                    Icons.arrow_back_ios_new_rounded,
                    color: Colors.white,
                  ),
                ),
                Expanded(
                  child: Center(
                    child: Text(
                      headTxt,
                      style: const TextStyle(
                        fontFamily: 'poppins',
                        fontSize: 19,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
