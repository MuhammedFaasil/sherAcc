import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sher_acc_erp/view/widgets/app_settings_widget.dart';
import 'package:sher_acc_erp/view/widgets/appbar_widget.dart';
import 'package:sher_acc_erp/view/widgets/sale_textfield_widget.dart';

class CompanySettingsPage extends StatelessWidget {
  static const routePath = '/companySettingsPage';
  const CompanySettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF2F2F2),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100),
        child: AppbarWidgget(
          headTxt: 'Company Settings',
          onPressed: () {
            context.pop();
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          children: [
            AppSettingsWidget(
              txt: 'Company Name',
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: const Text(
                        'Add Name',
                        style: TextStyle(
                            fontFamily: 'poppins', fontWeight: FontWeight.w500),
                      ),
                      content: const SaleTextFieldWidget(
                        hintTxt: '',
                      ),
                      actions: [
                        TextButton(
                          onPressed: () {
                            context.pop();
                          },
                          child: const Text(
                            'CANCEL',
                            style: TextStyle(
                                fontFamily: 'poppins',
                                color: Color(0xff0008B3),
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: const Text(
                            'SAVE',
                            style: TextStyle(
                                fontFamily: 'poppins',
                                color: Color(0xff0008B3),
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
                    );
                  },
                );
              },
            ),
            const SizedBox(
              height: 10,
            ),
            AppSettingsWidget(
              txt: 'Address 1',
              onPressed: () {},
            ),
            const SizedBox(
              height: 10,
            ),
            AppSettingsWidget(
              txt: 'Address 2',
              onPressed: () {},
            ),
            const SizedBox(
              height: 10,
            ),
            AppSettingsWidget(
              txt: 'Tax Number',
              onPressed: () {},
            ),
            const SizedBox(
              height: 10,
            ),
            AppSettingsWidget(
              txt: 'Phone',
              onPressed: () {},
            ),
            const SizedBox(
              height: 10,
            ),
            AppSettingsWidget(
              txt: 'Email',
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
