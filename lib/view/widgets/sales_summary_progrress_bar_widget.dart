import 'package:flutter/material.dart';

class SummaryProgrressBarWidget extends StatelessWidget {
  final String text;
  const SummaryProgrressBarWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      width: MediaQuery.sizeOf(context).width,
      height: 200,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5), color: Colors.white),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            text,
            style: const TextStyle(
                fontFamily: 'poppins', fontWeight: FontWeight.w500),
          ),
          const SizedBox(
            height: 10,
          ),
          Column(
            children: [
              for (int i = 0; i <= 9; i++)
                Column(
                  children: [
                    LinearProgressIndicator(
                      value: .7,
                      valueColor: const AlwaysStoppedAnimation<Color>(
                          Color(0xff0008B3)),
                      backgroundColor: Colors.grey[200],
                    ),
                    const SizedBox(
                      height: 10,
                    )
                  ],
                ),
            ],
          )
        ],
      ),
    );
  }
}
