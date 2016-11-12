import 'package:flutter/material.dart';
import 'package:eggflutter/services/mockRecipeService/MockRecipeService.dart';
import 'RecipeWidget/RecipeWidget.dart';
import 'package:eggflutter/services/Recipe.dart';

class EggCrackinHome extends StatelessWidget {
  final GlobalKey<ScrollableState> scrollablekey =
      new GlobalKey<ScrollableState>();

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(title: 'EggCrackin', home: new RecipeListPage());
  }
}

class RecipeListPage extends StatelessWidget {
  final GlobalKey<ScrollableState> scrollablekey =
      new GlobalKey<ScrollableState>();
  List<Widget> _recipes = mockrecipes.map((i) =>
      new RecipeWidget(i.title, i.image_url, i.publisher, i.publisher_url)).toList();
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      scrollableKey: scrollablekey,
      appBar: new AppBar(title: new Text("Egg Crackin!")),
      body: new LazyBlock(
        scrollableKey: scrollablekey,
        delegate: new LazyBlockChildren(children: _recipes),
      ),
    );
  }
}

void main() {
  runApp(new EggCrackinHome());
}
