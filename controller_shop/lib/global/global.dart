import 'package:flutter/material.dart';

class Global {
  // Theme
  static ThemeData appTheme = ThemeData.dark();

  // Paddings
  static EdgeInsets screenUpperPadding;
  static double leftIdentation = screenWidth / 12;
  static double rightIdentation = screenWidth / 12;

  // Screen Sizes
  static double screenWidth;
  static double screenHeight;

  // Top Text
  static EdgeInsets topTextAndResultsPadding =
      EdgeInsets.fromLTRB(leftIdentation, 10, 0, 5);

  // Tags
  static double tagListContainerHeight = 40;
  static EdgeInsets tagListPadding =
      EdgeInsets.fromLTRB(leftIdentation, 10, 0, 10);
  static BorderRadius tagBorderRadius = BorderRadius.circular(15);
  static EdgeInsets tagemojiPadding = EdgeInsets.fromLTRB(10, 0, 5, 0);
  static EdgeInsets tagTextPadding = EdgeInsets.fromLTRB(5, 0, 10, 0);
  static EdgeInsets tagSpaceBetween = EdgeInsets.fromLTRB(0, 0, 10, 0);
  static Color tagBgColor = Colors.grey[900];

  // Category card
  static EdgeInsets categoriesListPadding =
      EdgeInsets.fromLTRB(Global.leftIdentation, 0, Global.rightIdentation, 0);
  static EdgeInsets categoryCardTextPadding = EdgeInsets.fromLTRB(20, 0, 0, 20);
  static EdgeInsets categoryCardSpaceBetween = EdgeInsets.fromLTRB(0, 0, 0, 15);
  static BorderRadius categoryCardBorderRadius = BorderRadius.circular(30);
  static double categoryCardElevation = 10;
  static Color categoryCardShadowColor = Colors.black;
  static BorderRadius categoryCardShadowBorderRadius =
      BorderRadius.circular(35);

  // Text Styles
  static double minFontPageTitle = 15;
  static TextStyle pageTitleStyle = TextStyle(
    fontSize: 25,
    color: Colors.white,
    fontFamily: "Montserrat",
    letterSpacing: .5,
  );

  static TextStyle tagTextStyle = TextStyle(
    fontSize: 13,
    color: Colors.white,
    fontFamily: "Montserrat",
  );
  static TextStyle tagIconStyle = TextStyle(
    fontSize: 18,
  );

  static double minFontCategoryTitle = 18;
  static TextStyle categoryTitleStyle = TextStyle(
    fontSize: 25,
    color: Colors.white,
    fontFamily: "Montserrat",
    fontWeight: FontWeight.w900,
  );

  static double minFontResults = 10;
  static TextStyle resultsStyle = TextStyle(
    fontSize: 15,
    color: Colors.white,
    fontFamily: "Montserrat",
  );

  static double minFontProductTitle = 12;
  static TextStyle productTitleStyle = TextStyle(
    fontSize: 16,
    color: Colors.white,
    fontFamily: "Montserrat",
    fontWeight: FontWeight.w700,
  );
  static TextStyle productPriceOrLimitedStyle = TextStyle(
    fontSize: 12,
    color: Colors.grey[400],
    fontFamily: "Montserrat",
  );
  static TextStyle productFewPiecesStyle =
      TextStyle(fontSize: 12, color: Colors.red[300], fontFamily: "Montserrat");

  static TextStyle detailsBuyTextStyle = TextStyle(
    fontSize: 20,
    color: Colors.white,
    fontFamily: "Montserrat",
  );

  static TextStyle detailsTitleTextStyle = TextStyle(
    fontSize: 25,
    color: Colors.white,
    fontFamily: "Montserrat",
    fontWeight: FontWeight.w600,
  );

  static TextStyle detailsSubtitleTextStyle = TextStyle(
    fontSize: 20,
    color: Colors.grey[500],
    fontFamily: "Montserrat",
    fontWeight: FontWeight.w200,
  );

  static TextStyle detailsStarNumberTextStyle = TextStyle(
    fontSize: 15,
    color: Colors.white,
    fontFamily: "Montserrat",
    fontWeight: FontWeight.w600,
  );

  static TextStyle detailsReviewsTextStyle = TextStyle(
    fontSize: 15,
    color: Colors.grey[500],
    fontFamily: "Montserrat",
    fontWeight: FontWeight.w200,
  );

  static TextStyle detailsDescriptionTextStyle = TextStyle(
    fontSize: 15,
    color: Colors.white,
    fontFamily: "Montserrat",
    fontWeight: FontWeight.w300,
  );

  // Home Page assets
  static String homeTitle = "What's the right \ndeal for you?";
  static var stringEmojis = {
    // Maps names to emojis
    "Phones": "📱",
    "Controllers": "🕹",
    "Cameras": "📷",
    "Videogames": "👾",
    "Deals": "🔥",
    "News": "🕹",
  };
  static var titles = [
    "Console \nand Joystick",
    "VR \nHeadset",
  ];
  static Image ps4Pic = Image.asset("assets/homePage/ps4.jpg");
  static Image vrPic = Image.asset("assets/homePage/vr.jpg");

  // Controllers and Joystick assets
  static String conAndJoyTitle = "Console \nand Joystick";
  static String results = "239 results";
  static Image xbox = Image.asset("assets/consoleAndJoy/xbox.png");
  static Image joystick = Image.asset("assets/consoleAndJoy/joy.png");
  static Image joystick2 = Image.asset("assets/consoleAndJoy/joy2.png");
  static Image ps3controller = Image.asset("assets/consoleAndJoy/ps3con.png");
  static Image ps4controller = Image.asset("assets/consoleAndJoy/ps4con.png");
  static Image nswitch = Image.asset("assets/consoleAndJoy/switch.png");
  static Image xbox360 = Image.asset("assets/consoleAndJoy/xbox360.png");
  static List<Image> products = [xbox, joystick2, joystick, xbox360, nswitch];
  static List<String> productsNames = [
    "Xbox One Controller",
    "Thrustmaster Joystick",
    "Joystick",
    "Xbox360 Gamepad",
    "Nintendo Switch"
  ];
  static Map<int, double> productMainAxisSpace = {
    0: 1.7,
    1: 2,
    2: 1.8,
    3: 2,
    4: 2,
  };
  static double productListCrossAxisSpacing = 15.0;
  static double productListMainAxisSpacing = 2.0;

  // Products
  static EdgeInsets productListPadding =
      EdgeInsets.fromLTRB(leftIdentation, 10, rightIdentation, 0);
  static BorderRadius productBorderRadius = BorderRadius.circular(30);
  static EdgeInsets productInsidePadding = EdgeInsets.fromLTRB(30, 30, 30, 30);
  static EdgeInsets productImageTextSpace = EdgeInsets.fromLTRB(0, 10, 0, 5);
  static EdgeInsets productTextPriceSpace = EdgeInsets.fromLTRB(0, 0, 0, 10);

  // Detail Page assets
  static String detailsBuyButtonText = "Buy now for 49\$";
  static EdgeInsets detailsTitleTextPadding = EdgeInsets.fromLTRB(0, 0, 0, 10);
  static EdgeInsets detailsStarsPadding = EdgeInsets.fromLTRB(0, 10, 5, 10);
  static Color detailsStarColor = Colors.yellowAccent;
  static String detailsStarsNumber = "4.6";
  static String detailsReviewsNumber = "(1438 reviews)";
  static EdgeInsets detailsStarRowPadding = EdgeInsets.fromLTRB(0, 10, 0, 10);
  static String detailsDescription =
      "Discover all of the intensity, precision and comfort" 
      "of the Xbox One Wireless Controller. Pulse triggers let you " 
      "experience vibration feedback so you can hear every shot and jolt in high definition.";
}
