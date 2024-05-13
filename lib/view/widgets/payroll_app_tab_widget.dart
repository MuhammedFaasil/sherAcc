import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:sher_acc_erp/view/widgets/switch_button_widget.dart';
import 'package:sher_acc_erp/view/widgets/textfield_with_text.dart';

class PayrollAppTabWidget extends HookWidget {
  const PayrollAppTabWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var onChanged = useState<bool>(false);
    return Column(
      children: [
        const SizedBox(
          height: 10,
        ),
        const TextfieldWithText(headTxt: 'Username', hintTxt: ''),
        const SizedBox(
          height: 10,
        ),
        const TextfieldWithText(headTxt: 'Password', hintTxt: ''),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const Text(
              'App Enable',
              style: TextStyle(
                  fontFamily: 'poppins',
                  fontWeight: FontWeight.w500,
                  fontSize: 15),
            ),
            SwitchWidget(
                onChanged: (newValue) {
                  onChanged.value = newValue;
                },
                value: onChanged.value)
          ],
        )
      ],
    );
  }
}
