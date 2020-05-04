import 'package:controller_shop/categories/categoriesList.dart';
import 'package:controller_shop/tags/tagList.dart';
import 'package:flutter/material.dart';
import 'package:controller_shop/appBar/customAppBar.dart';
import 'package:controller_shop/global/global.dart';
import 'package:controller_shop/topText/topText.dart';

void main() {
  runApp(ControllerShop());
}

class ControllerShop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      darkTheme: Global.appTheme,
      home: Container(
        color: Global.appTheme.scaffoldBackgroundColor,
        child: HomeRoute(),
      ),
    );
  }
}

class HomeRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Global.screenUpperPadding = MediaQuery.of(context).padding;
    Global.screenWidth = MediaQuery.of(context).size.width;
    Global.screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Column(
        children: [
          Flexible(
            // appBar
            flex: 1,
            child: CustomAppBar(),
          ),
          Flexible(
            // upper text
            flex: 1,
            child: TopText(text: Global.homeTitle,),
          ),
          Flexible(
            // tags (horizontal ListView)
            flex: 1,
            child: TagList(
              tagsText: ["Phones", "Videogames", "Cameras", "Controllers"],
            ),
          ),
          Flexible(
            // categories (vertical ListView)
            flex: 8,
            child: CategoriesList(),
          ),
        ],
      ),
    );
  }
}
