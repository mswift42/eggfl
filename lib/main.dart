import 'package:flutter/material.dart';
import 'package:eggflutter/services/mockRecipeService/MockRecipeService.dart';

class EggCrackinHome extends StatelessWidget {
  static final GlobalKey<ScrollableState> scrollablekey =
      new GlobalKey<ScrollableState>();

  @override
  Widget build(BuildContext context) {
    return new RecipeListPage(recipes: mockrecipes, scrollablekey: scrollablekey);
  }
}

void main() {}
