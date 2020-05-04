import 'package:controller_shop/global/global.dart';
import 'package:controller_shop/tags/tag.dart';
import 'package:flutter/material.dart';

class TagList extends StatelessWidget {
  final List<String> tagsText;

  TagList({@required this.tagsText});

  @override
  Widget build(BuildContext context) {

    List<Tag> tags = tagsText.map((t) => Tag(tag: t)).toList();

    return Padding(
      padding: Global.tagListPadding,
      child: Container(
        height: Global.tagListContainerHeight,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: tags,
        ),
      ),
    );
  }
}
