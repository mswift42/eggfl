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
      children: recipeitems,
      padding: const EdgeInsets.all(2.0),
      initialScrollOffset: 1.0,
    );
  }
}

class RecipeBlockItem extends StatefulWidget {
  RecipeBlockItem({Key key}) : super(key: key);
  @override
  RecipeBlockState createState() => new RecipeBlockState();
}
