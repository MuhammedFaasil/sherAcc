import 'package:flutter/material.dart';
import 'package:sher_acc_erp/view/widgets/details_tab_widget.dart';
import 'package:sher_acc_erp/view/widgets/payroll_app_tab_widget.dart';
import 'package:sher_acc_erp/view/widgets/payroll_tab_widget.dart';

class SalesmanTabWidget extends StatelessWidget {
  const SalesmanTabWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(5),
                  ),
                  color: Color(0xFF010BCD)),
              width: MediaQuery.sizeOf(context).width,
              child: const TabBar(
                dividerColor: Color(0xff0008B3),
                labelColor: Colors.white,
                unselectedLabelColor: Colors.white,
                indicatorSize: TabBarIndicatorSize.tab,
                indicator: BoxDecoration(
                  color: Color(0xff0008B3),
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(5),
                  ),
                ),
                tabs: [
                  Tab(
                    text: 'Payroll',
                  ),
                  Tab(
                    text: 'Details',
                  ),
                  Tab(
                    text: 'Payroll App',
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const SizedBox(
              height: 300,
              child: TabBarView(children: [
                PayrollTabWidget(),
                DetailsTabWidget(),
                PayrollAppTabWidget(),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
