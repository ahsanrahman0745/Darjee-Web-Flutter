import 'dart:ui';
import 'package:darjee_flutter/widgets/dropdown.dart';
import 'package:flutter/material.dart';
import '../../../../constants/style.dart';
import '../../../../widgets/textformfeild.dart';
import '../../../generate_order/components/other_measurement_radio_button.dart';

class AddMeasurements extends StatefulWidget {
  const AddMeasurements({Key? key}) : super(key: key);

  @override
  State<AddMeasurements> createState() => _AddMeasurementsState();
}

class _AddMeasurementsState extends State<AddMeasurements> {
  bool isSearch = false;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Container(
      // height: 200,
      decoration: BoxDecoration(
        border: Border.all(width: 1, color: secondary),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
            decoration: const BoxDecoration(
              color: primary,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(10),
                topLeft: Radius.circular(10),
              ),
            ),
            child: Row(
              children: [
                const Icon(
                  Icons.book,
                  color: Colors.white,
                ),
                Text(
                  '  Add Measurements',
                  style: MyTextStyles.headingxSmallBoldWhite,
                ),
              ],
            ),
          ),
          Container(
            width: size.width,
            padding: const EdgeInsets.all(wDefaultPadding),
            color: lightColor,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomDropdown(
                    dropDownTitle: 'Select item',
                    dropDownItemList: ['Shalwar Kameez', '3 piece'],
                    title: 'Select Item'),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: const [
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
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: const [
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
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: const [
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
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: const [
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
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: const [
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
                const SizedBox(
                  height: 10,
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
                ElevatedButton(onPressed: (){}, child: Text('Submit'),),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
