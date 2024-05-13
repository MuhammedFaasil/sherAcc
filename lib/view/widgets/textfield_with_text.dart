import 'package:flutter/material.dart';
import 'package:sher_acc_erp/view/widgets/sale_textfield_widget.dart';

class TextfieldWithText extends StatelessWidget {
  final String headTxt;
  final String hintTxt;
  final double? width;
  const TextfieldWithText(
      {super.key, required this.headTxt, required this.hintTxt, this.width});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
               SizedBox(
                width: width,
              ),
              Text(
                headTxt,
                style: const TextStyle(
                    fontFamily: 'poppins',
                    fontWeight: FontWeight.w500,
                    fontSize: 15),
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          SaleTextFieldWidget(hintTxt: hintTxt),
        ],
      ),
    );
  }
}
