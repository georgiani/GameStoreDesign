import 'package:flutter/material.dart';
import 'package:controller_shop/global/global.dart';

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(0, Global.screenUpperPadding.top, 10, 0),
      child: Container(
        width: MediaQuery.of(context).size.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Flexible( // search button
              flex: 1,
              child: IconButton(
                alignment: Alignment.center,
                icon: Icon(Icons.search),
                iconSize: 25,
                onPressed: () {},
                color: Colors.grey[400],
                splashColor: Colors.indigo,
                splashRadius: 20,
              ),
            ),
            Flexible( // settings button
              flex: 1,
              child: IconButton(
                icon: Icon(Icons.settings),
                iconSize: 25,
                onPressed: () {},
                color: Colors.grey[400],
                splashColor: Colors.indigo,
                splashRadius: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}