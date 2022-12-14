import 'dart:ui';
import 'package:flutter/material.dart';
import '../../../../constants/style.dart';
import '../../../../responsive.dart';
import '../../../../widgets/date_picker.dart';
import '../../../../widgets/dropdown.dart';
import '../../../../widgets/pick_image.dart';
import '../../../../widgets/textformfeild.dart';

class AddMeasurementTitle extends StatelessWidget {
  const AddMeasurementTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: 600,
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
                  Icons.person,
                  color: Colors.white,
                ),
                Text(
                  '  Add Measurement Title',
                  style: MyTextStyles.headingxSmallBoldWhite,
                ),
              ],
            ),
          ),
          Expanded(
            flex: 9,
            child: Container(
              width: size.width,
              padding: const EdgeInsets.all(wDefaultPadding),
              color: lightColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 400,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Your Photo',
                          style: MyTextStyles.subHeadingBoldPrimary,
                        ),
                        const PickImage(),
                        Responsive.isDesktop(context)
                            ? Row(
                                children: [
                                  const CustomTextFormField(
                                    maxLines: 1,
                                    labelText: 'Item Name',
                                    icon: Icon(Icons.person),
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  const CustomTextFormField(
                                    maxLines: 1,
                                    labelText: 'Item Price',
                                    icon: Icon(Icons.money),
                                  ),
                                ],
                              )
                            : SizedBox(
                                height: 150,
                                child: Column(
                                  children: [
                                    const CustomTextFormField(
                                      maxLines: 1,
                                      labelText: 'Item Name',
                                      icon: Icon(Icons.person),
                                    ),
                                    const CustomTextFormField(
                                      maxLines: 1,
                                      labelText: 'Item Price',
                                      icon: Icon(Icons.money),
                                    ),
                                  ],
                                ),
                              ),
                        const CustomDropdown(
                          dropDownTitle: 'Select Category',
                          dropDownItemList: [
                            'Dry Clean',
                            'Stitching',
                            'Un stitched'
                          ],
                          title: 'Category',
                        ),
                      ],
                    ),
                  ),
                  Center(
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text('  Submit  '),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
