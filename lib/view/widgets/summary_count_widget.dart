import 'package:flutter/material.dart';

class SummaryCountWidget extends StatelessWidget {
  const SummaryCountWidget({super.key});

  @override
  Widget build(BuildContext context) {
    List summaryIcons = [
      'assets/icons/total_sales_icon.png',
      'assets/icons/total_no_sales_icon.png',
      'assets/icons/total_cash_sales_icon.png',
      'assets/icons/no_cash_sale_icon.png',
      'assets/icons/Credit_sale_icon.png',
      'assets/icons/no_credit_sale_icon.png',
      'assets/icons/customers_icon.png',
      'assets/icons/repeat_customer_icon.png'
    ];
    List summaryTxt = [
      'Total Sales',
      'Total No Sales',
      'Total Cash Sales',
      'Total No Cash Sales',
      'Total Credit Sales',
      'No of Credit Sales',
      ' No. Customers',
      'Repeat Customers No.'
    ];

    return GridView.builder(
      physics: const ClampingScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisExtent: 85,
          mainAxisSpacing: 5,
          crossAxisSpacing: 5,
          crossAxisCount: 2),
      itemCount: 8,
      itemBuilder: (context, index) {
        return Container(
          clipBehavior: Clip.antiAlias,
          height: 82,
          // width: 173,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Colors.white,
          ),
          child: Stack(
            children: [
              const Positioned(
                  right: -60,
                  top: -61,
                  child: CircleAvatar(
                    radius: 50,
                    backgroundColor: Color(0xff0008B3),
                  )),
              Positioned(
                  top: 8,
                  right: 9,
                  child: Image.asset(
                    summaryIcons[index],
                    fit: BoxFit.fill,
                  )),
              Positioned(
                  top: 6,
                  left: 3,
                  child: Text(
                    summaryTxt[index],
                    style: const TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                        fontSize: 13),
                  )),
              const Positioned(
                  top: 30,
                  left: 10,
                  child: Text(
                    '0',
                    style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'poppins',
                        fontWeight: FontWeight.bold),
                  ))
            ],
          ),
        );
      },
    );
  }
}
