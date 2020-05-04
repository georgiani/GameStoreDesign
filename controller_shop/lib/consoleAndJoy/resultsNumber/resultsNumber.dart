import 'package:auto_size_text/auto_size_text.dart';
import 'package:controller_shop/global/global.dart';
import 'package:flutter/material.dart';

class ResultsNumber extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Global.topTextAndResultsPadding,
      child: Align(
        alignment: Alignment.centerLeft,
        child: AutoSizeText(
          Global.results,
          style: Global.resultsStyle,
          minFontSize: Global.minFontResults,
        ),
      ),
    );
  }
}