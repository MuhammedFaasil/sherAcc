import 'package:flutter/material.dart';

class AppbarWidgget extends StatelessWidget {
  final String headTxt;
  final void Function()? onPressed;
  final Widget? iconFirst;
  final String? iconSecondPath; // Use a more descriptive name
  final Function()? onTapFirst;
  final Function()? onTapSecond;

  const AppbarWidgget({
    super.key,
    required this.headTxt,
    this.onPressed,
    this.iconFirst,
    this.iconSecondPath, // Use a more descriptive name
    this.onTapFirst,
    this.onTapSecond,
  });

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
                const SizedBox(width: 25),
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
                InkWell(
                  onTap: onTapFirst,
                  child: iconFirst ?? const SizedBox(),
                ),
                const SizedBox(width: 20),
                GestureDetector(
                  onTap: onTapSecond,
                  child: iconSecondPath != null
                      ? Image.asset(iconSecondPath!)
                      : const SizedBox(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
