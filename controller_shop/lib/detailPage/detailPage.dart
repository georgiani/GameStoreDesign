import 'package:controller_shop/global/global.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final String tag;
  final Image detailImage;
  final String title;
  final String type;

  DetailPage({
    this.detailImage,
    this.title,
    this.type,
    this.tag,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: Global.screenHeight / 2,
            child: ImageAndBack(
              tag: this.tag,
              detailImage: this.detailImage,
            ),
          ),
          Container(
            height: Global.screenHeight / 2,
            child: Description(
              title: this.title,
              type: this.type,
            ),
          ),
        ],
      ),
    );
  }
}

class ImageAndBack extends StatelessWidget {
  final String tag;
  final Image detailImage;

  ImageAndBack({
    this.tag,
    this.detailImage,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(
              Global.leftIdentation, Global.screenUpperPadding.top, 0, 0),
          child: Positioned.fill(
            child: Align(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: Hero(
                  tag: this.tag,
                  child: this.detailImage,
                  transitionOnUserGestures: true,
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(0, Global.screenUpperPadding.top, 0, 0),
          child: Positioned.fill(
            child: Align(
              alignment: Alignment.topLeft,
              child: IconButton(
                alignment: Alignment.center,
                icon: Icon(Icons.arrow_back),
                color: Colors.grey[400],
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class Description extends StatelessWidget {
  final String title;
  final String type;

  Description({
    this.title,
    this.type,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DescriptionText(title: this.title, type: this.type),
        DescriptionButton(),
      ],
    );
  }
}

class DescriptionButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 1,
      child: Container(
        color: Colors.black,
        child: Align(
          alignment: Alignment.center,
          child: Text(
            Global.detailsBuyButtonText,
            style: Global.detailsBuyTextStyle,
          ),
        ),
      ),
    );
  }
}

class DescriptionText extends StatelessWidget {
  final String type;
  final String title;

  DescriptionText({
    this.type,
    this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 5,
      child: Padding(
        padding: EdgeInsets.fromLTRB(
            Global.leftIdentation, 0, Global.rightIdentation, 0),
        child: Column(
          children: [
            Padding(
              padding: Global.detailsTitleTextPadding,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  child: Text(
                    this.title,
                    style: Global.detailsTitleTextStyle,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                child: Text(
                  this.type == "l"
                ? "Limited Edition"
                : (this.type == "p" ? "49\$" : "Few Pieces"),
                style: Global.detailsSubtitleTextStyle,
                ),
              ),
            ),
            Padding(
              padding: Global.detailsStarRowPadding,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  child: Row(
                    children: [
                      Padding( // Star
                        padding: Global.detailsStarsPadding,
                        child: Icon(Icons.star, color: Global.detailsStarColor),
                      ),
                      Padding( // Score
                        padding: Global.detailsStarsPadding,
                        child: Text(
                          Global.detailsStarsNumber,
                          style: Global.detailsStarNumberTextStyle,
                        ),
                      ),
                      Padding( // Reviews 
                        padding: Global.detailsStarsPadding,
                        child: Text(
                          Global.detailsReviewsNumber,
                          style: Global.detailsReviewsTextStyle,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
              child: Text(
                Global.detailsDescription,
                style: Global.detailsDescriptionTextStyle,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
