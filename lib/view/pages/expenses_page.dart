import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sher_acc_erp/view/widgets/appbar_widget.dart';
import 'package:sher_acc_erp/view/widgets/branch_select_widget.dart';

class ExpensesPage extends StatelessWidget {
  static const routPath = '/ExpensePage';
  final List<dynamic> valueofCircle = [0.3, 0.5, 06, 0.9];
  ExpensesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF2F2F2),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100),
        child: AppbarWidgget(
          headTxt: 'Expenses',
          onPressed: () {
            context.pop();
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          children: [
            const BranchSelectWidget(),
            const SizedBox(
              height: 30,
            ),
            CircularProgressIndicator(
              value: valueofCircle[0],
            )
          ],
        ),
      ),
    );
  }
}
