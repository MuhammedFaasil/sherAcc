import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sher_acc_erp/view/widgets/appbar_widget.dart';
import 'package:sher_acc_erp/view/widgets/dropdown_widget.dart';
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          children: [
            const Row(
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
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Type',
                    style: TextStyle(
                        fontFamily: 'poppins',
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                      width: MediaQuery.sizeOf(context).width,
                      height: 40,
                      color: Colors.white,
                      child: const DropDownWidget(
                          items: ['Brand', 'items', 'customer'])),
                ],
              ),    
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Name',
                    style: TextStyle(
                        fontFamily: 'poppins',
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                      width: MediaQuery.sizeOf(context).width,
                      height: 40,
                      color: Colors.white,
                      child: const DropDownWidget(
                          items: ['Brand', 'items', 'customer'])),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Description',
                    style: TextStyle(
                        fontFamily: 'poppins',
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                      width: MediaQuery.sizeOf(context).width,
                      height: 40,
                      color: Colors.white,
                      child: const DropDownWidget(
                          items: ['Brand', 'items', 'customer'])),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
