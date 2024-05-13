import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class DropDownWidget extends HookWidget {
  final List<String> items;
  final void Function(String value)? onChange;
  final String? initalValue;
  const DropDownWidget(
      {super.key, required this.items, this.onChange, this.initalValue});

  @override
  Widget build(BuildContext context) {
    final dropdownValue = useState<String>(initalValue ?? items.first);
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 7,
      ),
      child: SizedBox(
        height: 300,
        width: 200,
        child: DropdownButtonHideUnderline(
            child: DropdownButton<String>(
          value: dropdownValue.value,
          isExpanded: true,
          icon: const Icon(
            Icons.keyboard_arrow_down_rounded,
            color: Colors.black,
          ),
          onChanged: (String? value) {
            if (value != null) {
              dropdownValue.value = value;
              onChange?.call(value);
            }
          },
          items: items.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    textAlign: TextAlign.center,
                    value,
                    style: const TextStyle(
                        fontFamily: 'poppins',
                        fontWeight: FontWeight.w500,
                        fontSize: 13),
                  ),
                ],
              ),
            );
          }).toList(),
        )),
      ),
    );
  }
}
