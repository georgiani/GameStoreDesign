import 'package:auto_size_text/auto_size_text.dart';
import 'package:controller_shop/consoleAndJoy/consoleAndJoy.dart';
import 'package:controller_shop/global/global.dart';
import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  final Image bgImage;
  final String title;

  Category({
    @required this.bgImage,
    @required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Global.categoriesListPadding,
      child: GestureDetector(
        onTap: () => Navigator.of(context).push(
          MaterialPageRoute(
            // TODO: coming soon vr page
            builder: (ctx) => this.title == Global.titles[0] ? ConAndJoy() : null,
          ),
        ),
        child: Padding(
          padding: Global.categoryCardSpaceBetween,
          child: Card(
            borderOnForeground: false,
            elevation: Global.categoryCardElevation,
            shadowColor: Global.categoryCardShadowColor, 
            shape: RoundedRectangleBorder(
              borderRadius: Global.categoryCardShadowBorderRadius,
            ),
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: Global.categoryCardBorderRadius,
                  child: this.bgImage,
                ),
                Positioned.fill(
                  child: Padding(
                    padding: Global.categoryCardTextPadding,
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: AutoSizeText(
                        this.title,
                        style: Global.categoryTitleStyle,
                        minFontSize: Global.minFontCategoryTitle,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
