import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sher_acc_erp/view/widgets/appbar_widget.dart';
import 'package:sher_acc_erp/view/widgets/branch_select_widget.dart';

class GeneralSettingsPage extends StatelessWidget {
  static const routePath = '/generalSettingsPage';
  const GeneralSettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF2F2F2),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100),
        child: AppbarWidgget(
          headTxt: 'General Settings',
          onPressed: () {
            context.pop();
          },
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          children: [
            BranchSelectWidget(
              headTxt: 'App Language',
              items: [
                'ENGLISH',
                'ENGLIH',
                'ENGLSH',
                'ENGISH',
                'ENLISH',
                'EGLISH',
                'NGLISH',
                'kqwjehwjcdhrwejhiwqeu'
              ],
            ),
            SizedBox(
              height: 10,
            ),
            BranchSelectWidget(
              headTxt: 'Currency Symbol',
              items: ['₹', '€', '¥', '£'],
            ),
            SizedBox(
              height: 10,
            ),
            BranchSelectWidget(headTxt: 'Decimal Places', items: [
              "1",
              "2",
              "3",
            ]),
            SizedBox(
              height: 10,
            ),
            BranchSelectWidget(
              headTxt: 'Date Format',
              items: ['MM/DD/YYYY', 'DD/MM/YYYY', 'YYYY/MM/DD'],
            ),
            SizedBox(
              height: 10,
            ),
            BranchSelectWidget(
              headTxt: 'Theme',
              items: ['Light', 'Dark', 'System'],
            ),
            SizedBox(
              height: 10,
            ),
            BranchSelectWidget(
              headTxt: 'Default Salesman',
              items: ['', 'ecdf'],
            ),
            SizedBox(
              height: 10,
            ),
            BranchSelectWidget(
              headTxt: 'Default Branch',
              items: ['', 'cedw'],
            ),
            SizedBox(
              height: 10,
            ),
            BranchSelectWidget(
              headTxt: 'Default Cash A/C',
              items: ['', 'wecf '],
            ),
            SizedBox(
              height: 10,
            ),
            BranchSelectWidget(
              headTxt: 'Default Area',
              items: ['', 'qcw df'],
            ),
            SizedBox(
              height: 10,
            ),
            BranchSelectWidget(
              headTxt: 'Default Group',
              items: ['', 'qec'],
            ),
            SizedBox(
              height: 10,
            ),
            BranchSelectWidget(
              headTxt: 'Default Route',
              items: ['', 'wqce'],
            ),
          ],
        ),
      ),
    );
  }
}
