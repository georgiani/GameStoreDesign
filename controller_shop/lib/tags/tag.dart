import 'package:flutter/material.dart';
import 'package:controller_shop/global/global.dart';

class Tag extends StatelessWidget {

  final String tag;

  Tag({
    this.tag,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Global.tagSpaceBetween,
      child: ClipRRect(
        borderRadius: Global.tagBorderRadius,
        child: Container(
          color: Global.tagBgColor,
          child: Row(
            children: [
              Padding(
                padding: Global.tagemojiPadding,
                child: Text(
                  Global.stringEmojis[this.tag],
                  style: Global.tagIconStyle,
                ),
              ),
              Padding(
                padding: Global.tagTextPadding,
                child: Text(
                  this.tag,
                  style: Global.tagTextStyle,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
