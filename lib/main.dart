import 'package:flutter/material.dart';
import 'package:eggflutter/services/mockRecipeService/MockRecipeService.dart';
import 'package:eggflutter/RecipeWidget/RecipeWidget.dart' show RecipeWidget;
import 'package:eggflutter/RecipeWidget/RecipeListItem.dart'
    show RecipeListItem;
import 'package:eggflutter/services/Recipe.dart' show Recipe;

class EggCrackinHome extends StatelessWidget {
  final GlobalKey<ScrollableState> scrollablekey =
      new GlobalKey<ScrollableState>();

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: 'EggCrackin',
        home: new RecipeListPage(),
        theme: new ThemeData(
          primarySwatch: Colors.amber,
        ));
  }
}

class RecipeListPage extends StatefulWidget {
  @override
  _RecipeListPageState createState() => new _RecipeListPageState();
}

class _RecipeListPageState extends State<RecipeListPage> {
  final GlobalKey<ScrollableState> scrollablekey =
      new GlobalKey<ScrollableState>();
  List<Widget> _recipes =
      mockrecipes.map((i) => new RecipeListItem(i, null)).toList();
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      scrollableKey: scrollablekey,
      appBar: new AppBar(title: new Text("Egg Crackin!"), actions: <Widget>[
        new IconButton(
            icon: new Icon(Icons.search),
            tooltip: "Search for Recipes or ingredients",
            onPressed: null),
      ]),
      body: new LazyBlock(
        scrollableKey: scrollablekey,
        delegate: new LazyBlockChildren(children: _recipes),
      ),
    );
  }

  void showRecipeDetail(BuildContext context, Recipe recipe) {
    Navigator.push(
        context,
        new MaterialPageRoute<Null>(
            settings: const RouteSettings(name: 'eggcrack/recipe'),
            builder: (BuildContext context) {
              return new Theme(
                  data: new ThemeData.fallback(),
                  child: new RecipeWidget(
                      recipe.title,
                      recipe.image_url,
                      recipe.publisher,
                      recipe.publisher_url,
                      recipe.recipe_id));
            }));
  }
}

void main() {
  runApp(new EggCrackinHome());
}
