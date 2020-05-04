import 'package:controller_shop/global/global.dart';
import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

class TopText extends StatelessWidget {
  final String text;

  TopText({@required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Global.topTextAndResultsPadding,
      child: Align(
        alignment: Alignment.centerLeft,
        child: AutoSizeText(
          this.text,
          style: Global.pageTitleStyle,
          minFontSize: Global.minFontPageTitle,
        ),
      ),
    );
  }
}
