import 'package:flutter/material.dart';
import 'package:eggflutter/RecipeWidget/RecipeWidget.dart';
import 'package:eggflutter/services/mockRecipeService/MockRecipeService.dart' show mockrecipes;
import 'package:eggflutter/services/Recipe.dart'  show Recipe;

class RecipeBlockItem extends StatelessWidget {
  List<Widget> _recipewidgets = mockrecipes.map((i) => new RecipeWidget(i.title, i.image_url,
      i.publisher, i.publisher_url)).toList();
  @override
  Widget build(BuildContext context) {
    return new Block(
        children: _recipewidgets,
    padding: const EdgeInsets.all(2.0),
    initialScrollOffset: 1.0,
    scrollableKey: key,
    );
  }

}