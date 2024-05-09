import 'package:flutter/material.dart';
import 'package:sher_acc_erp/view/widgets/option_container_widget.dart';

class OptionsTabPage extends StatelessWidget {
  const OptionsTabPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          TextFormField(
            decoration: InputDecoration(
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 15, horizontal: 5),
              hintText: 'Search...',
              hintStyle: const TextStyle(
                fontFamily: 'poppins',
                color: Color(0xffB1B1B1),
              ),
              border: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: Color(0xffB1B1B1),
                ),
                borderRadius: BorderRadius.circular(3),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: ListView.separated(
              physics: const ClampingScrollPhysics(),
              separatorBuilder: (context, index) {
                return const SizedBox(
                  height: 10,
                );
              },
              itemCount: 15,
              itemBuilder: (context, index) {
                return const OptionContainerWidget();
              },
            ),
          )
        ],
      ),
    );
  }
}
