// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sher_acc_erp/view/controller/bloc/financial_year_bloc/financial_year_bloc.dart';

class FinancialYearDisplay extends StatelessWidget {
  const FinancialYearDisplay({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DateRangeBloc, Map<String, DateTime>>(
      builder: (context, state) => Container(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        height: 35,
        width: 380,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.white,
        ),
        child: Row(
          children: [
            const Text(
              'Financial Year:',
              style: TextStyle(
                fontFamily: 'poppins',
                fontWeight: FontWeight.w500,
              ),
            ),
            const Spacer(),
            InkWell(
              onTap: () async {
                final pickedDate = await showDatePicker(
                  context: context,
                  initialDate: state['from'],
                  firstDate: DateTime(2000),
                  lastDate: DateTime(2100),
                );
                if (pickedDate != null) {
                  context
                      .read<DateRangeBloc>()
                      .add(FromDateSelected(pickedDate));
                }
              },
              child: Container(
                width: 110,
                height: 21,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(2),
                  border: Border.all(width: 1, color: const Color(0xffA3A3A3)),
                ),
                child: Text(
                  state['from'].toString(),
                ),
              ),
            ),
            const SizedBox(width: 2),
            Container(width: 3, height: 1, color: const Color(0xffA3A3A3)),
            const SizedBox(width: 2),
            InkWell(
              onTap: () async {
                final pickedDate = await showDatePicker(
                  context: context,
                  initialDate: state['to'],
                  firstDate: DateTime(2000),
                  lastDate: DateTime(2100),
                );
                if (pickedDate != null) {
                  context.read<DateRangeBloc>().add(ToDateSelected(pickedDate));
                }
              },
              child: Container(
                width: 110,
                height: 21,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(2),
                  border: Border.all(width: 1, color: const Color(0xffA3A3A3)),
                ),
                child: Text(
                  state['to'].toString(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
