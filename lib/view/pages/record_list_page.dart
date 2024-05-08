import 'package:flutter/material.dart';
import 'package:sher_acc_erp/core/constants/record_list_constants/record_list_constants.dart';
import 'package:sher_acc_erp/view/widgets/items_grid_widget.dart';

class RecordListPage extends StatelessWidget {
  const RecordListPage({super.key});

  @override
  Widget build(BuildContext context) {
    final constants = RecordListConstants();
    return Scaffold(
      backgroundColor: const Color(0xffF2F2F2),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          children: [
            GridView.builder(
              shrinkWrap: true,
              physics: const ClampingScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  mainAxisExtent: 150,
                  crossAxisSpacing: 10),
              itemCount: 4,
              itemBuilder: (context, index) {
                return ItemsGridWidget(
                    onTap: () {},
                    iconsUrl: constants.recordListIcons[index],
                    nameTxt: constants.recordListTxt[index]);
              },
            )
          ],
        ),
      ),
    );
  }
}
