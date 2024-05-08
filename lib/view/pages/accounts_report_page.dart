import 'package:flutter/material.dart';
import 'package:sher_acc_erp/core/constants/account_report_constants/account_report_constants.dart';
import 'package:sher_acc_erp/view/widgets/items_grid_widget.dart';

class AccountsReportPage extends StatelessWidget {
  const AccountsReportPage({super.key});

  @override
  Widget build(BuildContext context) {
    final constants = AccountReportConstants();

    return Scaffold(
      backgroundColor: const Color(0xffF2F2F2),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            children: [
              GridView.builder(
                shrinkWrap: true,
                physics: const ClampingScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 10,
                    mainAxisExtent: 150,
                    crossAxisSpacing: 10),
                itemCount: 18,
                itemBuilder: (context, index) {
                  return ItemsGridWidget(
                      onTap: () {},
                      iconsUrl: constants.accountsIcon[index],
                      nameTxt: constants.accountTxt[index]);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
