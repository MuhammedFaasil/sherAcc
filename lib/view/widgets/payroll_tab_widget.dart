import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:sher_acc_erp/view/widgets/sale_textfield_widget.dart';
import 'package:sher_acc_erp/view/widgets/textfield_with_text.dart';

class PayrollTabWidget extends HookWidget {
  const PayrollTabWidget({Key? key});

  @override
  Widget build(BuildContext context) {
    final active = useState(false);
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 70,
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Type',
                        style: TextStyle(
                            fontFamily: 'poppins',
                            fontSize: 15,
                            fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      Expanded(
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width / 2,
                          child: const SaleTextFieldWidget(hintTxt: ''),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Date',
                        style: TextStyle(
                            fontFamily: 'poppins',
                            fontSize: 15,
                            fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      GestureDetector(
                        onTap: () async {
                          final pickedDate = await showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(2000),
                            lastDate: DateTime(2100),
                          );
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          alignment: Alignment.centerRight,
                          height: 43,
                          width: MediaQuery.of(context).size.width / 2.2,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(3),
                            border: Border.all(
                              color: const Color(0xffB8B8B8),
                            ),
                          ),
                          child:
                              Image.asset('assets/icons/date_picker_icon.png'),
                        ),
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
          const TextfieldWithText(headTxt: 'Basic Salary', hintTxt: ''),
          const SizedBox(
            height: 10,
          ),
          const Row(
            children: [
              Expanded(
                child: TextfieldWithText(headTxt: 'O.T Hour', hintTxt: ''),
              ),
              SizedBox(
                width: 5,
              ),
              Expanded(
                child: TextfieldWithText(headTxt: 'O.T Rate', hintTxt: ''),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const Expanded(
                child:
                    TextfieldWithText(headTxt: 'Leave Deduction', hintTxt: ''),
              ),
              const SizedBox(
                width: 5,
              ),
              Flexible(
                child: Container(
                  height: 40,
                  width: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3),
                    color: const Color(0xff0008B3),
                  ),
                  child: Row(
                    children: [
                      Checkbox(
                        activeColor: Colors.white,
                        checkColor: const Color(0xff0008B3),
                        side: const BorderSide(color: Colors.white),
                        value: active.value,
                        onChanged: (value) {
                          active.value = value!;
                        },
                      ),
                      const Text(
                        'Active',
                        style: TextStyle(
                          fontFamily: 'poppins',
                          fontSize: 15,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 50,
          )
        ],
      ),
    );
  }
}
