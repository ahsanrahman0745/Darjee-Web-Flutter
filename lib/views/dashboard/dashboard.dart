import 'dart:ui';

import 'package:flutter/material.dart';

import '../../admin/sidebar/sidebar_widget.dart';
import '../../constants/images.dart';
import '../../constants/style.dart';
import '../../responsive.dart';
import '../content.dart';
import 'components/orders/today_delivery_order.dart';
import 'components/orders/today_delivery_trial.dart';
import 'components/orders/today_orders.dart';
import 'components/orders/today_trail_order.dart';
import 'components/orders/upcoming_delivery_trail_orders.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: WidgetWithSidebar(context, cardOfUserTable(context, const DashboardView())),
    );
  }
}

class DashboardView extends StatefulWidget {
  const DashboardView({Key? key}) : super(key: key);

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      color: Colors.grey.shade300,
      width: size.width,
      child: Column(
        children: [

          Responsive.isDesktop(context)
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                        decoration: BoxDecoration(
                          color: Colors.grey.shade50,
                          border: Border.all(color: Colors.grey, width: 1),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                                width: size.width / 3,
                                color: const Color(0xffaaa9ad),
                                padding: const EdgeInsets.all(10),
                                child: Text(
                                  'Today\'s Order',
                                  style: MyTextStyles.headingSmallPrimary,
                                  overflow: TextOverflow.ellipsis,
                                )),
                            SizedBox(
                                width: size.width / 3,
                                height: 300,
                                child: const TodayOrders()),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: wDefaultPadding / 2),
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 10),
                                ),
                                onPressed: () {
                                  //TODO: navigation to all orders form dashboard
                                },
                                child: const Text("View all"),
                              ),
                            ),
                          ],
                        )),
                    const SizedBox(width: wDefaultPadding,),
                    Expanded(
                      child: Container(
                        height: 400,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade50,
                            border: Border.all(color: Colors.grey, width: 1),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Container(
                                  constraints: BoxConstraints(
                                    maxWidth: size.width
                                  ),
                                    // width: size.width / 2.55,
                                    color: const Color(0xffaaa9ad),
                                    padding: const EdgeInsets.all(10),
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          width: size.width / 3,
                                          child: Text(
                                            'Upcoming delivery and Trail Orders',
                                            style: MyTextStyles.headingSmallPrimary,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ),
                                      ],
                                    )),
                              ),
                              const SizedBox(
                                  // width: size.width / 2.55,
                                  height: 300,
                                  child: DefaultTabController(
                                    length: 3,
                                    child: TabBarView(
                                        children: [
                                          Icon(Icons.home, size: 100),
                                          Icon(Icons.dashboard, size: 100),
                                          Icon(Icons.settings, size: 100),
                                        ],
                                      ),

                                  )),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: wDefaultPadding / 2),
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20, vertical: 10),
                                  ),
                                  onPressed: () {
                                    //TODO: navigation to all orders form dashboard
                                  },
                                  child: const Text("View all"),
                                ),
                              ),
                            ],
                          )),
                    ),
                  ],
                )
              : Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        decoration: BoxDecoration(
                          color: Colors.grey.shade50,
                          border: Border.all(color: Colors.grey, width: 1),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                                width: size.width / 1.2,
                                color: const Color(0xffaaa9ad),
                                padding: const EdgeInsets.all(10),
                                child: Text(
                                  'Today\'s Order',
                                  style: MyTextStyles.subHeadingBoldPrimary,
                                )),
                            SizedBox(
                                width: size.width / 1.2,
                                height: 300,
                                child: const TodayOrders()),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: wDefaultPadding / 2),
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 10),
                                ),
                                onPressed: () {
                                  //TODO: navigation to all orders form dashboard
                                },
                                child: const Text("View all"),
                              ),
                            ),
                          ],
                        )),
                    const SizedBox(height: wDefaultPadding,),
                    Container(
                        decoration: BoxDecoration(
                          color: Colors.grey.shade50,
                          border: Border.all(color: Colors.grey, width: 1),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                                width: size.width / 1.2,
                                color: const Color(0xffaaa9ad),
                                padding: const EdgeInsets.all(10),
                                child: Text(
                                  'Upcoming delivery and Trail Orders',
                                  style: MyTextStyles.subHeadingBoldPrimary,
                                )),
                            SizedBox(
                                width: size.width / 1.2,
                                height: 300,
                                child: const UpComingDeliveryTrailOrders()),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: wDefaultPadding / 2),
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 10),
                                ),
                                onPressed: () {
                                  //TODO: navigation to all orders form dashboard
                                },
                                child: const Text("View all"),
                              ),
                            ),
                          ],
                        )),
                  ],
                ),
          const SizedBox(height: wDefaultPadding +10,),
          Responsive.isDesktop(context)
              ? Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  decoration: BoxDecoration(
                    color: Colors.grey.shade50,
                    border: Border.all(color: Colors.grey, width: 1),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                          width: size.width / 3,
                          color: const Color(0xffaaa9ad),
                          padding: const EdgeInsets.all(10),
                          child: Text(
                            'Today\'s Trail Order',
                            style: MyTextStyles.headingSmallPrimary,
                          )),
                      SizedBox(
                          width: size.width / 3,
                          height: 300,
                          child: const TodayTrailOrders()),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: wDefaultPadding / 2),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                          ),
                          onPressed: () {
                            //TODO: navigation to all orders form dashboard
                          },
                          child: const Text("View all"),
                        ),
                      ),
                    ],
                  )),
              const SizedBox(width: wDefaultPadding,),
              Expanded(
                child: Container(
                    height: 400,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade50,
                      border: Border.all(color: Colors.grey, width: 1),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Container(
                              constraints: BoxConstraints(
                                  maxWidth: size.width
                              ),
                              // width: size.width / 2.55,
                              color: const Color(0xffaaa9ad),
                              padding: const EdgeInsets.all(10),
                              child: Row(
                                children: [
                                  Text(
                                    'Today\'s delivery Orders',
                                    style: MyTextStyles.headingSmallPrimary,
                                  ),
                                ],
                              )),
                        ),
                        const SizedBox(
                          // width: size.width / 2.55,
                            height: 300,
                            child: TodayDeliveryOrders()),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: wDefaultPadding / 2),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 10),
                            ),
                            onPressed: () {
                              //TODO: navigation to all orders form dashboard
                            },
                            child: const Text("View all"),
                          ),
                        ),
                      ],
                    )),
              ),
            ],
          )
              : Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  decoration: BoxDecoration(
                    color: Colors.grey.shade50,
                    border: Border.all(color: Colors.grey, width: 1),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                          width: size.width / 1.2,
                          color: const Color(0xffaaa9ad),
                          padding: const EdgeInsets.all(10),
                          child: Text(
                            'Today\'s Trail Order',
                            style: MyTextStyles.subHeadingBoldPrimary,
                          )),
                      SizedBox(
                          width: size.width / 1.2,
                          height: 300,
                          child: const TodayTrailOrders()),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: wDefaultPadding / 2),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                          ),
                          onPressed: () {
                            //TODO: navigation to all orders form dashboard
                          },
                          child: const Text("View all"),
                        ),
                      ),
                    ],
                  )),
              const SizedBox(height: wDefaultPadding,),
              Container(
                  decoration: BoxDecoration(
                    color: Colors.grey.shade50,
                    border: Border.all(color: Colors.grey, width: 1),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                          width: size.width / 1.2,
                          color: const Color(0xffaaa9ad),
                          padding: const EdgeInsets.all(10),
                          child: Text(
                            'Today\'s delivery Orders',
                            style: MyTextStyles.subHeadingBoldPrimary,
                          )),
                      SizedBox(
                          width: size.width / 1.2,
                          height: 300,
                          child: const TodayDeliveryOrders()),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: wDefaultPadding / 2),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                          ),
                          onPressed: () {
                            //TODO: navigation to all orders form dashboard
                          },
                          child: const Text("View all"),
                        ),
                      ),
                    ],
                  )),
            ],
          ),
          // SizedBox(height: wDefaultPadding +10,),
        ],
      ),
    );
  }
}
