import 'package:flutter/material.dart';

class OptionContainerWidget extends StatelessWidget {
  const OptionContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      width: MediaQuery.sizeOf(context).width,
      height: 55,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5), color: Colors.white),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(
            width: 280,
            child: Text(
              'ADD EXDUTY IN PURCHASE ACCOUNT IN PURCHASE',
              textAlign: TextAlign.start,
              style: TextStyle(
                  fontFamily: 'poppins',
                  fontSize: 14,
                  fontWeight: FontWeight.w500),
            ),
          ),
          Checkbox(
            value: false,
            onChanged: (value) {},
          )
        ],
      ),
    );
  }
}
