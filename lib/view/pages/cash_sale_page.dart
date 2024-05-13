import 'package:flutter/material.dart';
import 'package:sher_acc_erp/view/widgets/bottom_save_widget.dart';
import 'package:sher_acc_erp/view/widgets/common_credit_sale_widget.dart';
import 'package:sher_acc_erp/view/widgets/dropdown_widget.dart';
import 'package:sher_acc_erp/view/widgets/fullsize_dropdown_widget.dart';
import 'package:sher_acc_erp/view/widgets/sale_textfield_widget.dart';

class CashSalePage extends StatelessWidget {
  const CashSalePage({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
          backgroundColor: const Color(0xffF2F2F2),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 80,
                  width: MediaQuery.sizeOf(context).width,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Invoice No',
                                  style: TextStyle(
                                      fontFamily: 'poppins',
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500),
                                ),
                                const SizedBox(
                                  height: 6,
                                ),
                                Expanded(
                                  child: IntrinsicWidth(
                                    child: Container(
                                        height: 20,
                                        width: 200,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(3),
                                            border: Border.all(
                                                color:
                                                    const Color(0xffB8B8B8))),
                                        child:
                                            const DropDownWidget(items: ['ijsd'])),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Date',
                                  style: TextStyle(
                                      fontFamily: 'poppins',
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500),
                                ),
                                const SizedBox(
                                  height: 6,
                                ),
                                Expanded(
                                  child: IntrinsicWidth(
                                    child: GestureDetector(
                                      onTap: () async {
                                        final pickedDate = await showDatePicker(
                                          context: context,
                                          initialDate: DateTime.now(),
                                          firstDate: DateTime(2000),
                                          lastDate: DateTime(2100),
                                        );
                                      },
                                      child: Container(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 5),
                                          alignment: Alignment.centerRight,
                                          height: 20,
                                          width: 200,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(3),
                                              border: Border.all(
                                                  color:
                                                      const Color(0xffB8B8B8))),
                                          child: Image.asset(
                                              'assets/icons/date_picker_icon.png')),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    width: MediaQuery.sizeOf(context).width,
                    height: 80,
                    color: Colors.white,
                    child: const FullSizeDropdownWidget(
                      lableTxt: 'Sales Rate', items: ['nmsad'],
                    )),
                const SizedBox(
                  height: 10,
                ),
                const CommonCreditSaleWidget(
                  headTxtFirst: 'Billing Name',
                  headTxtSecond: 'Phone Number',
                  customWidgets: [
                    SizedBox(
                      height: 10,
                    ),
                    SaleTextFieldWidget(
                      hintTxt: 'Address',
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SaleTextFieldWidget(
                      hintTxt: 'Site Name',
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SaleTextFieldWidget(
                      hintTxt: 'Vehicle NO',
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Total Amount',
                        style: TextStyle(
                            fontFamily: 'poppins',
                            fontSize: 15,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        '₹..........................',
                        style: TextStyle(
                            fontFamily: 'poppins',
                            fontWeight: FontWeight.w500,
                            fontSize: 15),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          bottomNavigationBar: BotomSaveWidget(
            onTapSaveNew: () {},
            onTapSave: () {},
          )),
    );
  }
}
