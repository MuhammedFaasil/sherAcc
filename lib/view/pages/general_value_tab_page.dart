import 'package:flutter/material.dart';
import 'package:sher_acc_erp/view/widgets/button_widget.dart';
import 'package:sher_acc_erp/view/widgets/textfield_with_text.dart';

class GeneralValuePage extends StatelessWidget {
  const GeneralValuePage({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: const Color(0xffF2F2F2),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Column(
              children: [
                const TextfieldWithText(
                    width: 10,
                    headTxt: 'Company Cash A/C',
                    hintTxt: 'Select Cash A/C'),
                const SizedBox(
                  height: 10,
                ),
                const TextfieldWithText(
                    width: 10,
                    headTxt: 'Tool Bar Sales',
                    hintTxt: 'Select Sale'),
                const SizedBox(
                  height: 10,
                ),
                const TextfieldWithText(
                    width: 10,
                    headTxt: 'Stock Valuation',
                    hintTxt: 'Select Stock Value'),
                const SizedBox(
                  height: 10,
                ),
                const TextfieldWithText(
                    width: 10,
                    headTxt: 'Default Location',
                    hintTxt: 'Select Location'),
                const SizedBox(
                  height: 10,
                ),
                const TextfieldWithText(
                    width: 10,
                    headTxt: 'Decimal Point',
                    hintTxt: 'Selct Decimal'),
                const SizedBox(
                  height: 10,
                ),
                const TextfieldWithText(
                    width: 10,
                    headTxt: 'Serial No Title',
                    hintTxt: 'Serial No Title'),
                const SizedBox(
                  height: 10,
                ),
                const TextfieldWithText(
                    width: 10, headTxt: 'Ewai Api Owner', hintTxt: 'Api Owner'),
                const SizedBox(
                  height: 10,
                ),
                const TextfieldWithText(
                    width: 10,
                    headTxt: 'Item Special Rate Title',
                    hintTxt: 'Special Rate Title'),
                const SizedBox(
                  height: 10,
                ),
                const TextfieldWithText(
                    width: 10, headTxt: 'Head Office DB', hintTxt: 'Select DB'),
                const SizedBox(
                  height: 10,
                ),
                const TextfieldWithText(
                    width: 10,
                    headTxt: 'Decimal Point On Report',
                    hintTxt: 'Select Decimal'),
                const SizedBox(
                  height: 15,
                ),
                SizedBox(
                  width: 300,
                  child: ButtonWidget(
                    color: Colors.white,
                    onPressed: () {},
                    txt: 'Sales Forms Register ',
                    backgroundColor: const Color(0xff0008B4),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                SizedBox(
                  width: 300,
                  child: ButtonWidget(
                    color: Colors.white,
                    onPressed: () {},
                    txt: 'Sales Other Details Register ',
                    backgroundColor: const Color(0xff0008B4),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                SizedBox(
                  width: 300,
                  child: ButtonWidget(
                    color: Colors.white,
                    onPressed: () {},
                    txt: 'SMS Settings ',
                    backgroundColor: const Color(0xff0008B4),
                  ),
                ),
                const SizedBox(
                  height: 50,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
