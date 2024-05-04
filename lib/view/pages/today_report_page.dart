import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sher_acc_erp/view/widgets/financial_year_add_widget.dart';

class TodayReportPage extends StatelessWidget {
  const TodayReportPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF2F2F2),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            SizedBox(
              height: 16,
            ),
            FinancialYearWidget(),
          
          ],
        ),
      ),
    );
  }
}
