import 'package:darjee_flutter/widgets/textformfeild.dart';
import 'package:flutter/material.dart';

import '../../../constants/style.dart';
import '../../../widgets/dropdown.dart';
import 'other_measurement_radio_button.dart';

class OrderMeasurementCard extends StatelessWidget {
  const OrderMeasurementCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 500,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black12,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(10),
                topLeft: Radius.circular(10),
              ),
              color: primary,
            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    'Shalwar Kameez',
                    style: MyTextStyles.subHeadingBoldWhite,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 490,
            child: ListView(
              children: [
                Row(
                  children: const [
                    CustomTextFormField(
                      maxLines: 1,
                      labelText: 'Enter Quantity',
                      keyboardType: TextInputType.text,
                    ),
                    CustomTextFormField(
                      maxLines: 1,
                      labelText: 'Total Quantity',
                      keyboardType: TextInputType.text,
                    ),
                  ],
                ),
                Row(
                  children: [
                    CustomTextFormField(
                      maxLines: 1,
                      labelText: '???????? ???????????? ',
                      keyboardType: TextInputType.phone,
                    ),
                    CustomTextFormField(
                      maxLines: 1,
                      labelText: '????????',
                      keyboardType: TextInputType.phone,
                    ),
                    CustomTextFormField(
                      maxLines: 1,
                      labelText: '????????',
                      keyboardType: TextInputType.phone,
                    ),
                  ],
                ),
                Row(
                  children: [
                    CustomTextFormField(
                      maxLines: 1,
                      labelText: '??????????',
                      keyboardType: TextInputType.phone,
                    ),
                    CustomTextFormField(
                      maxLines: 1,
                      labelText: '??????',
                      keyboardType: TextInputType.phone,
                    ),
                    CustomTextFormField(
                      maxLines: 1,
                      labelText: '????',
                      keyboardType: TextInputType.phone,
                    ),
                  ],
                ),
                Row(
                  children: [
                    CustomTextFormField(
                      maxLines: 1,
                      labelText: '??????????',
                      keyboardType: TextInputType.phone,
                    ),
                    CustomTextFormField(
                      maxLines: 1,
                      labelText: '???????? ????',
                      keyboardType: TextInputType.phone,
                    ),
                    CustomTextFormField(
                      maxLines: 1,
                      labelText: '???? ????????????',
                      keyboardType: TextInputType.phone,
                    ),
                  ],
                ),
                Row(
                  children: [
                    CustomTextFormField(
                      maxLines: 1,
                      labelText: '?????????? ????????????',
                      keyboardType: TextInputType.phone,
                    ),
                    CustomTextFormField(
                      maxLines: 1,
                      labelText: '?????????? ??????????',
                      keyboardType: TextInputType.phone,
                    ),
                    CustomTextFormField(
                      maxLines: 1,
                      labelText: '????????????',
                      keyboardType: TextInputType.phone,
                    ),
                  ],
                ),
                Row(
                  children: [
                    CustomTextFormField(
                      maxLines: 1,
                      labelText: '??????',
                      keyboardType: TextInputType.phone,
                    ),
                    CustomTextFormField(
                      maxLines: 1,
                      labelText: '??????????????',
                      keyboardType: TextInputType.phone,
                    ),
                  ],
                ),
                ///Other Measurement Options for
                const SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: primary.withOpacity(0.5),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text(
                          'Other Measurement Options for Shalwar Kameez',
                          style: MyTextStyles.regularWhite,
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Wrap(
                  alignment: WrapAlignment.start,
                  runSpacing: 10,
                  spacing: 10,
                  children: [
                    OtherMeasurementRadioButton(
                      otherMeasurementText: '????????',
                      check: false,
                    ),
                    OtherMeasurementRadioButton(
                      otherMeasurementText: '?????????? ????????',
                      check: false,
                    ),
                    OtherMeasurementRadioButton(
                      otherMeasurementText: '???????? ???? ????????',
                      check: false,
                    ),
                    OtherMeasurementRadioButton(
                      otherMeasurementText: '???????? ???? ?? ????????',
                      check: false,
                    ),
                    OtherMeasurementRadioButton(
                      otherMeasurementText: '???????? ??????',
                      check: false,
                    ),
                    OtherMeasurementRadioButton(
                      otherMeasurementText: '?????? ??????',
                      check: false,
                    ),
                    OtherMeasurementRadioButton(
                      otherMeasurementText: '???????? ??????',
                      check: false,
                    ),
                    OtherMeasurementRadioButton(
                      otherMeasurementText: '???????? ???????? ????????',
                      check: false,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: primary.withOpacity(0.5),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text(
                          'Extra Description For Shalwar Kameez',
                          style: MyTextStyles.regularWhite,
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    const CustomTextFormField(
                      maxLines: 2,
                      labelText: 'Special requirements',
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: primary.withOpacity(0.5),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text(
                          'Order Extra Designing for Shalwar Kameez',
                          style: MyTextStyles.regularWhite,
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const CustomDropdown(
                  dropDownTitle: 'Select Design Item',
                  dropDownItemList: ['item 1', 'item 2'],
                  title: 'Design Item',
                ),
                const CustomDropdown(
                  dropDownTitle: 'Select Design Item First',
                  dropDownItemList: ['item 1', 'item 2'],
                  title: 'Design Item First',
                ),
                const CustomDropdown(
                  dropDownTitle: 'Select Design Option First',
                  dropDownItemList: ['item 1', 'item 2'],
                  title: 'Design Option First',
                ),
                Row(
                  children: [
                    const CustomTextFormField(
                      maxLines: 1,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
