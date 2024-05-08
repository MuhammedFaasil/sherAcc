import 'package:flutter/material.dart';

class StatementGridWidget extends StatelessWidget {
  const StatementGridWidget({super.key});

  @override
  Widget build(BuildContext context) {
    List gridTxt = [
      'Cash Reciept',
      'Cash Payment',
      'Bank Reciept',
      'Bank Payment'
    ];
    List gridImg = [
      'assets/icons/cash_reciept_icon.png',
      'assets/icons/Cash payment icon.png',
      'assets/icons/bank payment icon.png',
      'assets/icons/Bank reciept icon.png'
    ];
    return GridView.builder(
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          mainAxisExtent: 50),
      itemCount: 4,
      itemBuilder: (context, index) {
        return Container(
          width: 153,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Colors.white,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: const Color(0xff0008B3)),
                child: Image.asset(
                  gridImg[index],
                ),
              ),
              Text(
                gridTxt[index],
                style: const TextStyle(
                    fontFamily: 'poppins',
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              )
            ],
          ),
        );
      },
    );
  }
}
