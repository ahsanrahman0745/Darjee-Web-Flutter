import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../../../../responsive.dart';
import 'package:get/get.dart';
import '../../constants/images.dart';
import '../../constants/style.dart';
import '../../controllers/sidebar_controller.dart';
import '../../model/side_menu_item.dart';
import 'sidebar_widget.dart';

List<CDM> sidebarList = [
  CDM(
    title: 'Dashboard',
    icon: Icons.dashboard,
    submenus: [
      subList(
        subTitle: 'Dashboard',
        subIcon: Icons.dashboard_customize_rounded,
        // myRoute: MyRoutesLink.mainRoute
      ),
    ],
  ),
  CDM(
    title: 'Users',
    icon: Icons.supervised_user_circle,
    submenus: [
      subList(
        subTitle: 'Admin',
        subIcon: Icons.admin_panel_settings,
        // myRoute: MyRoutesLink.getListOfAdmin
      ),
      subList(
        subTitle: 'Customer',
        subIcon: Icons.perm_identity_sharp,
        // myRoute: MyRoutesLink.getListOfCustomer
      ),
    ],
  ),
  CDM(
    title: 'Packages',
    icon: Icons.local_offer,
    submenus: [
      subList(
          // myRoute: MyRoutesLink.getListOfPackages,
          subTitle: 'Packages List',
          subIcon: Icons.list),
      subList(
          // myRoute: MyRoutesLink.getCreatePackage,
          subTitle: 'Create Package',
          subIcon: Icons.create),
    ],
  ),
  CDM(
    title: 'Quotation',
    icon: Icons.bookmark_border,
    submenus: [
      subList(
        subTitle: 'Quotation List',
        // myRoute: MyRoutesLink.getListOfQuotation,
        subIcon: Icons.list_alt,
      ),
    ],
  ),
  CDM(
    title: 'Orders',
    icon: Icons.shopping_cart_checkout,
    submenus: [
      subList(subTitle: 'Bank Order', subIcon: Icons.add_card_rounded),
      subList(subTitle: 'Package Order', subIcon: Icons.add_card_rounded),
      subList(subTitle: 'Company Order', subIcon: Icons.add_card_rounded),
    ],
  ),
  // CDM(
  //   title: 'Home2',
  //   icon: Icons.ac_unit,
  //   submenus: [
  //     subList(subTitle: 'subTitle', subIcon: Icons.add_card_rounded),
  //     subList(subTitle: 'subTitle', subIcon: Icons.add_card_rounded),
  //     subList(subTitle: 'subTitle', subIcon: Icons.add_card_rounded),
  //   ],
  // ),
];

SidebarController sidebarController = Get.put(SidebarController());

Row WidgetWithSidebar(BuildContext context, Widget widget) {
  return Row(
    children: [
      Responsive.isDesktop(context)
          ? SidebarOnDisktop(context)
          : onMobileSidebar(context),
      Expanded(
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Responsive(
                    mobile: headerTitle(wDefaultPadding),
                    tablet: headerTitle(wDefaultPadding * 2.5),
                    desktop: headerTitle(wDefaultPadding * 4)),
              ),
            ),
            Divider(thickness: 2,
              color: Colors.grey,
            ),
            Expanded(
              flex: 8,
              child: widget,
            )
          ],
        ),
      )
    ],
  );
}

Widget headerTitle(double DefaultPadding) {
  return Obx(
    () => Padding(
      padding: EdgeInsets.only(left: DefaultPadding, ),
      child: RichText(
          text: TextSpan(
        style: const TextStyle(
          fontSize: wDefaultPadding,
          color: Colors.black,
        ),
        children: <TextSpan>[
          TextSpan(
              text:
                  sidebarList[sidebarController.selectedMenuIndex.value].title,
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: wDefaultPadding * 1.5)),
          TextSpan(
              text:
                  " > ${sidebarList[sidebarController.selectedMenuIndex.value].submenus[sidebarController.selectedSubmenuIndex.value].subTitle}"),

        ],
      )),
    ),
  );
}

Widget SidebarOnDisktop(BuildContext context) {
  return Container(
    width: 200,
    color: Colors.black,
    child: Column(
      children: [
        SidebarLogo(logo, 38.0),
        Obx(() => Expanded(child: ListItem())),
        SidebarButtotmSetting(18.0, Icons.settings, "Settings", context)
      ],
    ),
  );
}

Align SidebarButtotmSetting(
    double padding, IconData icon, String tilte, BuildContext context) {
  return Align(
    alignment: Alignment.bottomCenter,
    child: Padding(
      padding: EdgeInsets.all(padding),
      child: InkWell(
        onTap: () {
          if (kDebugMode) {
            print("Settings");
          }
        },
        child: Responsive.isDesktop(context)
            ? Row(
                children: [
                  Icon(
                    icon,
                    color: Colors.white,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    tilte,
                    style: const TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ],
              )
            : Icon(
                icon,
                color: Colors.white,
              ),
      ),
    ),
  );
}

Align SidebarLogo(String logo, double padding) {
  return Align(
    alignment: Alignment.topCenter,
    child: Padding(
      padding: EdgeInsets.all(padding),
      child: Image.asset(
        logo,
      ),
    ),
  );
}

ListView ListItem() {
  return ListView.builder(
      key: Key(
          '${sidebarController.selectedMenuIndex.value.toString()}'), //attention
      itemCount: sidebarList.length,
      itemBuilder: (context, index) {
        return Container(
          padding: EdgeInsets.all(2),
          color: Colors.black,
          child: ExpansionTile(
            key: Key(index.toString()),
            initiallyExpanded:
                index == sidebarController.selectedMenuIndex.value,
            collapsedBackgroundColor: Colors.white30,
            leading: Icon(
              sidebarList[index].icon,
              color: Colors.white,
            ),
            title: Transform.translate(
              offset: Offset(-21, 0),
              child: Text(
                sidebarList[index].title,
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
            ),

            children: List.generate(
                sidebarList[index].submenus.length,
                (index2) => subManuButton(
                    index, index2, sidebarList[index].submenus[index2], false)),
            // children: sidebarList[index].submenus.map((e) {
            //   return subManuButton(index,e,false);
            // }).toList(),
          ),
        );
      });
}

Widget onMobileSidebar(BuildContext context) {
  return AnimatedContainer(
    duration: Duration(seconds: 1),
    width: 85,
    color: Colors.black,
    child: Column(
      children: [
        SidebarLogo(logo, 21),
        Obx(() => Expanded(child: SidebarListForMobile())),
        SidebarButtotmSetting(9, Icons.settings, "Settings", context)
      ],
    ),
  );
}

ListView SidebarListForMobile() {
  return ListView.builder(
      key: Key('${sidebarController.selectedMenuIndex.value.toString()}'),
      itemCount: sidebarList.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(1.7),
          child: ExpansionTile(
            key: Key(index.toString()),
            initiallyExpanded:
                index == sidebarController.selectedMenuIndex.value,
            collapsedBackgroundColor: Colors.white30,
            title: Icon(
              sidebarList[index].icon,
              color: Colors.white,
            ),
            // children: sidebarList[index].submenus.map((e) {
            //   return subManuButtonOnMobile(e,false);
            // }).toList(),
            children: List.generate(
                sidebarList[index].submenus.length,
                (index2) => subManuButtonOnMobile(
                    index, index2, sidebarList[index].submenus[index2], false)),
          ),
        );
      });
}

Widget subManuButtonOnMobile(
    int menu, int submenu, subList subManu, bool bool) {
  return Obx(
    () => Container(
      decoration: sidebarController.selectedSubmenuIndex.value == submenu &&
              sidebarController.selectedMenuIndex.value == menu
          ? BoxDecoration(
              border: Border(
                  bottom: BorderSide(
              color: Colors.amber,
              width: 1.0, // Underline thickness
            )))
          : null,
      child: InkWell(
        onTap: () {
          sidebarController.expandOrShrinkDrawer(
              menu, submenu, subManu.myRoute!);
          print('menu=> $menu');
          print('submenu=> $submenu');
          print(
              'sidebarController.selectedSubmenuIndex.value=> ${sidebarController.selectedSubmenuIndex.value}');
          print(
              ' sidebarController.selectedMenuIndex.value=> ${sidebarController.selectedMenuIndex.value}');
        },
        child: Padding(
          padding: const EdgeInsets.all(2.0),
          child: ListTile(
            leading: Icon(
              subManu.subIcon,
              color: Colors.white,
              size: 22,
            ),
          ),
        ),
      ),
    ),
  );
}

Widget subManuButton(int menu, int submenu, subList subManu, bool bool) {
  return Obx(
    () => Container(
      decoration: sidebarController.selectedSubmenuIndex.value == submenu &&
              sidebarController.selectedMenuIndex.value == menu
          ? BoxDecoration(
              border: Border(
                  bottom: BorderSide(
              color: Colors.amber,
              width: 1.0, // Underline thickness
            )))
          : null,
      child: InkWell(
        onTap: () {
          sidebarController.expandOrShrinkDrawer(
              menu, submenu, subManu.myRoute!);
          print('menu=> $menu');
          print('submenu=> $submenu');
          print(
              'sidebarController.selectedSubmenuIndex.value=> ${sidebarController.selectedSubmenuIndex.value}');
          print(
              ' sidebarController.selectedMenuIndex.value=> ${sidebarController.selectedMenuIndex.value}');
        },
        child: Padding(
          padding: const EdgeInsets.all(1.0),
          child: ListTile(
            leading: Icon(
              subManu.subIcon,
              color: Colors.white,
              size: 19,
            ),
            title: Transform.translate(
              offset: Offset(-16, 0),
              child: Text(
                subManu.subTitle,
                style: TextStyle(
                  fontSize: bool ? 17 : 14,
                  color: bool ? Colors.white : Colors.grey,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ),
    ),
  );
}

Widget sMenuButton(String subMenu, bool isTitle) {
  return InkWell(
    onTap: () {
      //handle the function
      //if index==0? donothing: doyourlogic here
    },
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        subMenu,
        style: TextStyle(
          fontSize: isTitle ? 17 : 14,
          color: isTitle ? Colors.white : Colors.grey,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  );
}
