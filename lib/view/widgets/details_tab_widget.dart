import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sher_acc_erp/view/widgets/fullsize_dropdown_widget.dart';
import 'package:sher_acc_erp/view/widgets/textfield_with_text.dart';

class DetailsTabWidget extends StatelessWidget {
  const DetailsTabWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: MediaQuery.sizeOf(context).width,
          height: 68,
          child: const Row(
            children: [
              Expanded(
                child: FullSizeDropdownWidget(
                  lableTxt: 'Commision',
                  items: ['Yes', 'No'],
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Flexible(
                flex: 1,
                child: Column(
                  children: [
                    SizedBox(
                      height: 2,
                    ),
                    TextfieldWithText(
                      headTxt: 'Percentage',
                      hintTxt: '%',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        const Row(
          children: [
            Expanded(
              child: TextfieldWithText(headTxt: 'P.F', hintTxt: ''),
            ),
            SizedBox(
              width: 5,
            ),
            Expanded(
              child: TextfieldWithText(headTxt: 'Working Hours', hintTxt: ''),
            ),
          ],
        )
      ],
    );
  }
}
