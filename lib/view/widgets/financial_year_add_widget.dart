import 'dart:async';

import 'package:flutter/material.dart';

class FinancialYearWidget extends StatefulWidget {
  const FinancialYearWidget({super.key});

  @override
  State<FinancialYearWidget> createState() => _FinancialYearWidgetState();
}

class _FinancialYearWidgetState extends State<FinancialYearWidget> {
  @override
  Widget build(BuildContext context) {
    Future pickDateDailog() async {
      DateTime? pickedTime = await showDatePicker(
          context: context,
          initialDate: DateTime.now(),
          firstDate: DateTime(2000),
          lastDate: DateTime(2100));
      if (pickedTime != null) {
        setState(() {
          // final setToDay = DateFormat();
        });
      }
    }

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      height: 35,
      width: 380,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5), color: Colors.white),
      child: Row(
        children: [
          const Text(
            'Financial Year',
            style: TextStyle(
              fontFamily: 'poppins',
              fontWeight: FontWeight.w500,
            ),
          ),
          const Spacer(),
          InkWell(
            onTap: () {
              pickDateDailog();
            },
            child: Container(
              width: 50,
              height: 20,
              color: Colors.amber,
            ),
          )
        ],
      ),
    );
  }
}
