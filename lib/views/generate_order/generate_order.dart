import 'package:flutter/material.dart';
import '../../admin/sidebar/sidebar_widget.dart';
import '../../constants/style.dart';
import '../content.dart';
import 'package:flutter/cupertino.dart';
import 'components/order_detail_form.dart';
import 'components/generate_order_form.dart';

class GenerateOrder extends StatefulWidget {
  const GenerateOrder({Key? key}) : super(key: key);

  @override
  State<GenerateOrder> createState() => _GenerateOrderState();
}

class _GenerateOrderState extends State<GenerateOrder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: snowBackground,
      body: WidgetWithSidebar(
        context,
        cardOfUserTable(
          context,
          Column(
            children: const [
               GenerateOrderForm(),
              SizedBox(height: 20),
              OrderDetailForm(),
            ],
          ),
        ),
      ),
    );
  }
}
