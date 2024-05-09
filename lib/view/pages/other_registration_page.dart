import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sher_acc_erp/view/widgets/appbar_widget.dart';
import 'package:sher_acc_erp/view/widgets/three_button_widget.dart';

class OtherRegistrationPage extends StatelessWidget {
  static const routePath = '/otherRegistratioPage';
  const OtherRegistrationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF2F2F2),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100),
        child: AppbarWidgget(
          headTxt: 'Other Registration',
          onPressed: () {
            context.pop();
          },
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ThreeButtons(
                  txt: 'Save',
                  iconUrl: 'assets/icons/Save file_icon.png',
                ),
                SizedBox(
                  width: 20,
                ),
                ThreeButtons(
                  txt: 'Clear',
                  iconUrl: 'assets/icons/clear_icon.png',
                ),
                SizedBox(
                  width: 20,
                ),
                ThreeButtons(
                  txt: 'Delete',
                  iconUrl: 'assets/icons/Delete_icon.png',
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
