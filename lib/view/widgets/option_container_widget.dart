import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class OptionContainerWidget extends HookWidget {
  const OptionContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final selected = useState(false);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      width: MediaQuery.sizeOf(context).width,
      height: 55,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5), color: Colors.white),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(
            width: 280,
            child: Text(
              'ADD EXDUTY IN PURCHASE ACCOUNT IN PURCHASE',
              textAlign: TextAlign.start,
              style: TextStyle(
                  fontFamily: 'poppins',
                  fontSize: 14,
                  fontWeight: FontWeight.w500),
            ),
          ),
          Checkbox(
            activeColor: const Color(0xff0008B3),
            value: selected.value,
            onChanged: (value) {
              selected.value = value!;
            },
          )
        ],
      ),
    );
  }
}
