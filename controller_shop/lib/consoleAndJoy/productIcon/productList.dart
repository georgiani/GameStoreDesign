import 'package:controller_shop/consoleAndJoy/productIcon/product.dart';
import 'package:controller_shop/global/global.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class ProductList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Global.productListPadding,
      child: StaggeredGridView.countBuilder(
        crossAxisCount: 2,
        itemCount: 5,
        itemBuilder: (ctx, idx) {
          return Container(
            child: Product(
              type: idx % 3 == 0 ? "l" : (idx % 3 == 1 ? "p" : "f"),
              priceOrSmh: "49\$",
              productImage: Global.products[idx],
              productName: Global.productsNames[idx],
              tag: idx.toString(),
            ),
          );
        },
        staggeredTileBuilder: (idx) =>
            StaggeredTile.count(1, Global.productMainAxisSpace[idx]),
        mainAxisSpacing: Global.productListMainAxisSpacing,
        crossAxisSpacing: Global.productListCrossAxisSpacing,
      ),
    );
  }
}
