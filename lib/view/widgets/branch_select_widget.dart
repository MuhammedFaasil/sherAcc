import 'package:flutter/material.dart';
import 'package:sher_acc_erp/view/widgets/dropdown_widget.dart';

class BranchSelectWidget extends StatelessWidget {
  final List<String> items;
  final String headTxt;
  const BranchSelectWidget(
      {super.key, required this.headTxt, required this.items});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      height: 40,
      width: MediaQuery.sizeOf(context).width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.white,
      ),
      child: Row(
        children: [
          Text(
            headTxt,
            style: const TextStyle(
              fontFamily: 'poppins',
              fontWeight: FontWeight.w500,
            ),
          ),
          const Spacer(),
          DropDownWidget(items: items)
        ],
      ),
    );
  }
}
