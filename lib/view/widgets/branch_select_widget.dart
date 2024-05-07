import 'package:flutter/material.dart';
import 'package:sher_acc_erp/view/widgets/dropdown_widget.dart';

class BranchSelectWidget extends StatelessWidget {
  const BranchSelectWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      height: 35,
      width: 380,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.white,
      ),
      child: const Row(
        children: [
          Text(
            'Branch',
            style: TextStyle(
              fontFamily: 'poppins',
              fontWeight: FontWeight.w500,
            ),
          ),
          Spacer(),
          DropDownWidget(items: ['SHOP', ''])
        ],
      ),
    );
  }
}
