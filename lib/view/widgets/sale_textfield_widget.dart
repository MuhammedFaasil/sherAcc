import 'package:flutter/material.dart';

class SaleTextFieldWidget extends StatelessWidget {
  final String? hintTxt;
  const SaleTextFieldWidget({super.key, required this.hintTxt});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: TextField(
        maxLength: null,
        minLines: null,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(5),
          labelText: hintTxt,
          labelStyle: const TextStyle(
              fontFamily: 'poppins',
              color: Color(0xff868686),
              fontSize: 13,
              fontWeight: FontWeight.w600),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(3),
            borderSide: const BorderSide(color: Color(0xffB8B8B8), width: .2),
          ),
        ),
      ),
    );
  }
}
