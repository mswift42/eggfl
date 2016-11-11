import 'package:flutter/material.dart';
import 'package:eggflutter/RecipeWidget/RecipeWidget.dart';
import 'package:eggflutter/services/mockRecipeService/MockRecipeService.dart'
    show mockrecipes;
import 'package:eggflutter/services/Recipe.dart' show Recipe;

class RecipeBlockState extends State<RecipeBlockItem> {
  static final GlobalKey<ScrollableState> _scrollableKey =
      new GlobalKey<ScrollableState>();
  List<Widget> recipeitems = mockrecipes
      .map((i) =>
          new RecipeWidget(i.title, i.image_url, i.publisher, i.publisher_url))
      .toList();

  @override
  Widget build(BuildContext context) {
    return new Block(

      scrollableKey: _scrollableKey,
      children: recipeitems,
      padding: const EdgeInsets.all(2.0),
    );
  }
}

class RecipeBlockItem extends StatefulWidget {
  final GlobalKey<ScrollableState> scrollableKey;
  RecipeBlockItem({Key key, this.scrollableKey}) : super(key: key);
  @override
  RecipeBlockState createState() => new RecipeBlockState();
}
