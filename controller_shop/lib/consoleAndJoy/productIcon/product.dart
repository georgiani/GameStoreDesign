import 'package:auto_size_text/auto_size_text.dart';
import 'package:controller_shop/detailPage/detailPage.dart';
import 'package:controller_shop/global/global.dart';
import 'package:flutter/material.dart';

class Product extends StatelessWidget {
  final Image productImage;
  final String productName;
  final String priceOrSmh;
  final String type;
  final String tag;

  Product({
    this.productImage,
    this.productName,
    this.priceOrSmh,
    this.type,
    this.tag,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (ctx) => DetailPage(
              tag: this.tag,
              detailImage: this.productImage,
              title: this.productName,
              type: this.type,
            ),
          ),
        );
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: Global.productImageTextSpace,
            child: Center(
              child: HeroImage(
                tag: this.tag,
                productImg: this.productImage,
              ),
            ),
          ),
          Padding(
            padding: Global.productTextPriceSpace,
            child: ProductTitle(
              productTitle: this.productName,
            ),
          ),
          Price(
            type: this.type,
            price: this.priceOrSmh,
          ),
        ],
      ),
    );
  }
}

class HeroImage extends StatelessWidget {
  final String tag;
  final Image productImg;

  HeroImage({
    this.tag,
    this.productImg,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: Global.productBorderRadius,
      child: Container(
        color: Colors.grey[800],
        child: Padding(
          padding: Global.productInsidePadding,
          child: Hero(
            tag: this.tag,
            child: this.productImg,
            transitionOnUserGestures: true,
          ),
        ),
      ),
    );
  }
}

class ProductTitle extends StatelessWidget {
  final String productTitle;

  ProductTitle({this.productTitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Align(
        alignment: Alignment.centerLeft,
        child: AutoSizeText(
          this.productTitle,
          style: Global.productTitleStyle,
          minFontSize: Global.minFontProductTitle,
          softWrap: true,
        ),
      ),
    );
  }
}

class Price extends StatelessWidget {
  final String type;
  final String price;

  Price({
    this.type,
    this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          this.type == "l"
              ? "Limited Edition"
              : (this.type == "p" ? this.price : "Few Pieces"),
          style: (this.type == "l" || this.type == "p")
              ? Global.productPriceOrLimitedStyle
              : Global.productFewPiecesStyle,
        ),
      ),
    );
  }
}
