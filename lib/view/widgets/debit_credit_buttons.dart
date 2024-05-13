import 'package:flutter/material.dart';

class DebitCreditButtons extends StatelessWidget {
  final Function() onDebitPressed;
  final Function() onCreditPressed;

  const DebitCreditButtons({
    super.key,
    required this.onDebitPressed,
    required this.onCreditPressed,
  });

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      width: 160,
      child: Stack(
        children: [
          Positioned(
            left: 40,
            // right: 10,
            child: GestureDetector(
              onTap: () {},
              child: Container(
                padding: const EdgeInsets.only(right: 6, top: 2),
                width: 70,
                height: 25,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(23),
                    color: Colors.white),
                child: const Text(
                  'Cash',
                  style: TextStyle(fontFamily: 'poppins'),
                  textAlign: TextAlign.end,
                ),
              ),
            ),
          ),
          Positioned(
            child: GestureDetector(
              onTap: () {},
              child: Container(
                width: 65,
                height: 25,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(23),
                    color: Colors.green),
                child: const Center(
                    child: Text(
                  'Credit',
                  style: TextStyle(fontFamily: 'poppins'),
                )),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
