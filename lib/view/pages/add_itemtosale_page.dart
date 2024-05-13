import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sher_acc_erp/view/widgets/appbar_widget.dart';
import 'package:sher_acc_erp/view/widgets/bottom_save_widget.dart';
import 'package:sher_acc_erp/view/widgets/fullsize_dropdown_widget.dart';
import 'package:sher_acc_erp/view/widgets/sale_textfield_widget.dart';

class AddItemToSalePage extends StatelessWidget {
  static const routePath = '/addItemToSale';
  const AddItemToSalePage({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: const Color(0xffF2F2F2),
        appBar: PreferredSize(
            preferredSize: const Size.fromHeight(100),
            child: AppbarWidgget(
              headTxt: 'Add Item to Sale',
              iconSecondPath: 'assets/icons/Settings_icon.png',
              onPressed: () {
                context.pop();
              },
            )),
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          width: MediaQuery.sizeOf(context).width,
          height: 280,
          color: Colors.white,
          child: const Column(
            children: [
              SizedBox(
                height: 80,
                child: FullSizeDropdownWidget(
                  lableTxt: 'Item Name',
                  items: ['jhsbd'],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Expanded(
                      child: SizedBox(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Quantity',
                          style: TextStyle(
                              fontFamily: 'poppins',
                              fontSize: 15,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        SaleTextFieldWidget(
                          hintTxt: '',
                        ),
                      ],
                    ),
                  )),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: SizedBox(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 3,
                          ),
                          SizedBox(
                              height: 70,
                              child: FullSizeDropdownWidget(
                                lableTxt: 'Unit',
                                items: ['jkhs'],
                              )),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Expanded(
                      child: SizedBox(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Rate(Price/Unit)',
                          style: TextStyle(
                              fontFamily: 'poppins',
                              fontSize: 15,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        SaleTextFieldWidget(
                          hintTxt: '',
                        ),
                      ],
                    ),
                  )),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: SizedBox(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 3,
                          ),
                          SizedBox(
                              height: 70,
                              child: FullSizeDropdownWidget(
                                lableTxt: 'Tax',
                                items: ['kjsd'],
                              )),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        bottomNavigationBar: BotomSaveWidget(
          onTapSaveNew: () {},
          onTapSave: () {},
        ),
      ),
    );
  }
}
