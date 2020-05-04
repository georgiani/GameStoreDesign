import 'package:controller_shop/appBar/customAppBar.dart';
import 'package:controller_shop/consoleAndJoy/productIcon/productList.dart';
import 'package:controller_shop/consoleAndJoy/resultsNumber/resultsNumber.dart';
import 'package:controller_shop/global/global.dart';
import 'package:controller_shop/tags/tagList.dart';
import 'package:controller_shop/topText/topText.dart';
import 'package:flutter/material.dart';

class ConAndJoy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Flexible(
            flex: 1,
            child: CustomAppBar(),
          ),
          Flexible(
            flex: 1,
            child: TopText(text: Global.conAndJoyTitle),
          ),
          Flexible(
            flex: 1,
            child: TagList(
              tagsText: ["Deals", "News"],
            ),
          ),
          Flexible(
            flex: 1,
            child: ResultsNumber(),
          ),
          Flexible(
            flex: 7,
            child: ProductList(),
          ),
        ],
      ),
    );
  }
}