import 'package:flutter/material.dart';
import 'package:sher_acc_erp/view/widgets/branch_select_widget.dart';
import 'package:sher_acc_erp/view/widgets/financial_year_add_widget.dart';
import 'package:sher_acc_erp/view/widgets/sales_summary_progrress_bar_widget.dart';
import 'package:sher_acc_erp/view/widgets/summary_count_widget.dart';

class TodayReportPage extends StatelessWidget {
  static const routePath = '/todayReportPage';
  const TodayReportPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xffF2F2F2),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          child: Column(
            children: [
              FinancialYearDisplay(),
              SizedBox(
                height: 10,
              ),
              BranchSelectWidget(headTxt: 'Branch', items: ['SHOPE'],),
              SizedBox(
                height: 10,
              ),
              SummaryCountWidget(),
              SizedBox(
                height: 10,
              ),
              SummaryProgrressBarWidget(
                text: 'Sales Summary',
              ),
              SizedBox(
                height: 10,
              ),
              SummaryProgrressBarWidget(
                text: 'Parchase Summary',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
