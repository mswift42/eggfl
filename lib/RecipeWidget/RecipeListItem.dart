import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart' show TapGestureRecognizer;
import 'package:flutter/services.dart' show UrlLauncher;

import 'package:eggflutter/services/Recipe.dart' show Recipe;

class LinkTextSpan extends TextSpan {
  LinkTextSpan({TextStyle style, String url, String text})
      : super(
            style: style,
            text: text ?? url,
            recognizer: new TapGestureRecognizer()
              ..onTap = () {
                UrlLauncher.launch(url);
              });
}

class RecipeListItem extends StatelessWidget {
  final Recipe recipe;
  final VoidCallback onTap;
  RecipeListItem(this.recipe, this.onTap);

  @override
  build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return new Card(
      color: Colors.white,
      child: new Column(
        children: <Widget>[
          new Hero(
            tag: recipe.image_url,
            child: new Row(children: <Widget>[
              new Flexible(
                child: new Image.network(recipe.image_url, fit: ImageFit.cover),
              ),
            ]),
          ),
          new Padding(
            padding: const EdgeInsets.all(16.0),
            child: new Row(children: <Widget>[
              new RichText(
                text: new TextSpan(
                  children: <TextSpan>[
                    new TextSpan(
                        text: recipe.title, style: themeData.textTheme.body1)
                  ],
                ),
              )
            ], mainAxisAlignment: MainAxisAlignment.center),
          ),
        ],
      ),
    );
  }
}
