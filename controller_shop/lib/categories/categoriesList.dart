import 'package:controller_shop/categories/category.dart';
import 'package:controller_shop/global/global.dart';
import 'package:flutter/material.dart';

class CategoriesList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          Category(
            bgImage: Global.ps4Pic,
            title: Global.titles[0],
          ),
          Category(
            bgImage: Global.vrPic,
            title: Global.titles[1],
          ),
        ],
      ),
    );
  }
}
