import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:sher_acc_erp/view/widgets/appbar_widget.dart';
import 'package:sher_acc_erp/view/widgets/salesman_tab_widget.dart';
import 'package:sher_acc_erp/view/widgets/textfield_with_text.dart';
import 'package:sher_acc_erp/view/widgets/three_button_widget.dart';

class SalesmanPage extends HookWidget {
  static const routePath = '/salesmanPage';

  const SalesmanPage({super.key});

  @override
  Widget build(BuildContext context) {
    final gender = useState('');

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(100),
          child: AppbarWidgget(
            headTxt: 'Salesman',
            onPressed: () => context.pop(),
          ),
        ),
        body: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ThreeButtons(
                      txt: 'Save',
                      iconUrl: 'assets/icons/Save file_icon.png',
                    ),
                    SizedBox(width: 20),
                    ThreeButtons(
                      txt: 'Clear',
                      iconUrl: 'assets/icons/clear_icon.png',
                    ),
                    SizedBox(width: 20),
                    ThreeButtons(
                      txt: 'Delete',
                      iconUrl: 'assets/icons/Delete_icon.png',
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                const TextfieldWithText(headTxt: 'Employee Name', hintTxt: ''),
                const SizedBox(height: 10),
                const Text(
                  'Gender',
                  style: TextStyle(
                    fontFamily: 'poppins',
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 5),
                Container(
                  width: MediaQuery.sizeOf(context).width,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3),
                    border: Border.all(color: const Color(0xffB8B8B8)),
                  ),
                  child: Row(
                    children: [
                      Radio(
                        activeColor: const Color(0xff0008B3),
                        value: 'Male',
                        groupValue: gender.value,
                        onChanged: (value) => gender.value = value as String,
                      ),
                      const Text(
                        'Male',
                        style: TextStyle(
                          fontFamily: 'poppins',
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(width: 20),
                      Radio(
                        activeColor: const Color(0xff0008B3),
                        value: 'Female',
                        groupValue: gender.value,
                        onChanged: (value) => gender.value = value as String,
                      ),
                      const Text(
                        'Female',
                        style: TextStyle(
                          fontFamily: 'poppins',
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 15),
                const TextfieldWithText(headTxt: 'Address 1', hintTxt: ''),
                const SizedBox(height: 15),
                const TextfieldWithText(headTxt: 'Address 2', hintTxt: ''),
                const SizedBox(height: 15),
                const TextfieldWithText(headTxt: 'Address 3', hintTxt: ''),
                const SizedBox(height: 15),
                const TextfieldWithText(headTxt: 'Mobile', hintTxt: ''),
                const SizedBox(height: 30),
                const SalesmanTabWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
