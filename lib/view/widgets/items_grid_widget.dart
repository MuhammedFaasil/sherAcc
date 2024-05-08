import 'package:flutter/material.dart';

class ItemsGridWidget extends StatelessWidget {
  final void Function()? onTap;
  final String iconsUrl;
  final String nameTxt;
  const ItemsGridWidget(
      {super.key,
      required this.onTap,
      required this.iconsUrl,
      required this.nameTxt});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
            boxShadow: const [
              BoxShadow(
                  color: Colors.grey,
                  blurRadius: .6,
                  offset: Offset(.5, 2.5),
                  spreadRadius: .3)
            ]),
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Container(
              width: 77,
              height: 77,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: const Color(0xff0008B3)),
              child: Image.asset(iconsUrl),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              nameTxt,
              style: const TextStyle(
                  fontFamily: 'poppins',
                  fontWeight: FontWeight.w500,
                  fontSize: 15),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
