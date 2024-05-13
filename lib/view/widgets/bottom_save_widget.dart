import 'package:flutter/material.dart';

class BotomSaveWidget extends StatelessWidget {
  final Function()? onTapSaveNew;
  final Function()? onTapSave;
  const BotomSaveWidget({super.key, this.onTapSaveNew, this.onTapSave});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Row(
        children: [
          Expanded(
            child: GestureDetector(
              onTap: onTapSaveNew,
              child: Container(
                height: 53,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3),
                    color: Colors.white),
                child: const Center(
                    child: Text(
                  'Save & New',
                  style: TextStyle(
                      fontFamily: 'poppins',
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                )),
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onDoubleTap: onTapSave,
              child: Container(
                height: 53,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3),
                    color: const Color(0xff0008B3)),
                child: const Center(
                    child: Text(
                  'Save',
                  style: TextStyle(
                      fontFamily: 'poppins',
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.w500),
                )),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
