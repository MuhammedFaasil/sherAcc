import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sher_acc_erp/core/constants/dashboard_constants.dart/dashboard_constants.dart';
import 'package:sher_acc_erp/view/pages/expenses_page.dart';
import 'package:sher_acc_erp/view/pages/statement_page.dart';

class DashPage extends StatelessWidget {
  static const rotePath = '/dashPage';
  const DashPage({super.key});

  @override
  Widget build(BuildContext context) {
    final constants = DashBoardConstants();
    final List pages = [
      StatementPage.rotePath,
      ExpensesPage.routPath,
      ExpensesPage.routPath,
      ExpensesPage.routPath,
    ];

    return Scaffold(
      backgroundColor: const Color(0xffF2F2F2),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GridView.builder(
              shrinkWrap: true,
              itemCount: 4,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  crossAxisCount: 2,
                  mainAxisExtent: 150),
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    context.push(pages[index]!);
                  },
                  child: Container(
                    width: 170,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.white,
                    ),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: 77,
                          height: 77,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: const Color(0xff0008B3)),
                          child: Image.asset(constants.dashImages[index]),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          constants.dashTxt[index],
                          style: const TextStyle(
                              fontSize: 15,
                              fontFamily: 'poppins',
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
