import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
    return SizedBox(
      height: 150,
      width: 60,
      child: Center(
        child: DropdownButtonHideUnderline(
            child: DropdownButton<String>(
          value: dropdownValue.value,
          isExpanded: true,
          icon: const Icon(Icons.keyboard_arrow_down_rounded),
          // style: TextStyle(color: Colors.black),
          onChanged: (String? value) {
            if (value != null) {
              dropdownValue.value = value;
              onChange?.call(value);
            }
          },
          items: items.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Center(
                child: Text(
                  value,
                  style: TextStyle(
                      fontFamily: 'poppins',
                      fontWeight: FontWeight.w500,
                      fontSize: 13),
                ),
              ),
            );
          }).toList(),
        )),
      ),
    );
  }
}
