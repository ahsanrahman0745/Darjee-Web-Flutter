import 'package:flutter/material.dart';
import '../constants/style.dart';

Widget cardOfUserTable(BuildContext context,Widget views){
  var screenSize = MediaQuery.of(context).size;

  return Container(
    // color: snowBackground,
    padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
    child: ScrollConfiguration(
      behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
      child: SingleChildScrollView(
        child: views,
      ),
    ),
  );
}