import 'package:flutter/material.dart';
import 'package:sher_acc_erp/view/widgets/dropdown_widget.dart';

class FullSizeDropdownWidget extends StatelessWidget {
  final List<String> items;
  final String lableTxt;
  const FullSizeDropdownWidget({super.key, required this.lableTxt, required this.items});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          lableTxt,
          style: const TextStyle(
              fontFamily: 'poppins', fontSize: 15, fontWeight: FontWeight.w500),
        ),
        const SizedBox(
          height: 5,
        ),
        Container(
          height: 40,
          width: MediaQuery.sizeOf(context).width,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(3),
              border: Border.all(color: const Color(0xffB8B8B8))),
          child:  DropDownWidget(
            items: items,
          ),
        ),
      ],
    );
  }
}
