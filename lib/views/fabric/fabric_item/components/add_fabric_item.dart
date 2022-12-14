import 'dart:ui';
import 'package:flutter/material.dart';

import '../../../../constants/style.dart';
import '../../../../responsive.dart';
import '../../../../widgets/date_picker.dart';
import '../../../../widgets/dropdown.dart';
import '../../../../widgets/pick_image.dart';
import '../../../../widgets/textformfeild.dart';

class AddFabricItem extends StatelessWidget {
  const AddFabricItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: Responsive.isDesktop(context)?650:1000,
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
                  '  Add Fabric Item Info',
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
                  Responsive.isDesktop(context)
                      ? Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: 520,
                        width: size.width / 3,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            PickImage(),
                            CustomDropdown(
                              dropDownTitle: 'Select Article Title',
                              dropDownItemList: ['male', 'female'], title: 'Article Title',
                            ),
                            CustomDropdown(
                              dropDownTitle: 'Select Brand Title',
                              dropDownItemList: ['male', 'female'], title: 'Brand Title',
                            ),
                            CustomDropdown(
                              dropDownTitle: 'Select Vendor',
                              dropDownItemList: ['male', 'female'], title: 'Vendor',
                            ),
                            CustomTextFormField(
                              maxLines: 1,
                              labelText: 'Category',
                              icon: Icon(Icons.menu),
                            ),
                            CustomTextFormField(
                              maxLines: 1,
                              labelText: 'Branch Number',
                              icon: Icon(Icons.menu),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 400,
                        width: size.width / 3,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            CustomDropdown(
                              title: 'Unit',
                              dropDownTitle: 'Select Unit',
                              dropDownItemList: ['male', 'female'],
                            ),
                            CustomTextFormField(
                              maxLines: 1,
                              labelText: 'Quantity',
                            ),
                            CustomTextFormField(
                              maxLines: 1,
                              labelText: 'Total Price',
                            ),
                            CustomTextFormField(
                              maxLines: 1,
                              labelText: 'Selling Per Item Price',
                            ),
                            CustomTextFormField(
                              maxLines: 1,
                              labelText: 'Selling Total Price',
                            ),
                            CustomTextFormField(
                              maxLines: 1,
                              labelText: 'Suit Price(7-Meter)',
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                      : SizedBox(
                    height: 860,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:  [
                        PickImage(),
                        CustomDropdown(
                          title: 'Article Title',
                          dropDownTitle: 'Select Article Title',
                          dropDownItemList: ['male', 'female'],
                        ),
                        CustomDropdown(
                          title: 'Brand Title',
                          dropDownTitle: 'Select Brand Title',
                          dropDownItemList: ['male', 'female'],
                        ),
                        CustomDropdown(
                          title: 'Vendor',
                          dropDownTitle: 'Select Vendor',
                          dropDownItemList: ['male', 'female'],
                        ),
                        CustomTextFormField(
                          maxLines: 1,
                          labelText: 'Category',
                          icon: Icon(Icons.menu),
                        ),
                        CustomTextFormField(
                          maxLines: 1,
                          labelText: 'Branch Number',
                          icon: Icon(Icons.menu),
                        ),
                        CustomDropdown(
                          title: 'Unit',
                          dropDownTitle: 'Select Unit',
                          dropDownItemList: ['male', 'female'],
                        ),
                        CustomTextFormField(
                          maxLines: 1,
                          labelText: 'Quantity',
                        ),
                        CustomTextFormField(
                          maxLines: 1,
                          labelText: 'Total Price',
                        ),
                        CustomTextFormField(
                          maxLines: 1,
                          labelText: 'Selling Per Item Price',
                        ),
                        CustomTextFormField(
                          maxLines: 1,
                          labelText: 'Selling Total Price',
                        ),
                        CustomTextFormField(
                          maxLines: 1,
                          labelText: 'Suit Price(7-Meter)',
                        ),
                      ],
                    ),
                  ),
                  Center(child: ElevatedButton(onPressed: (){}, child: Text('  Submit  ')),)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
