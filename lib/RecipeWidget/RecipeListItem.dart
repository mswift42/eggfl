import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart' show TapGestureRecognizer;
import 'package:flutter/services.dart' show UrlLauncher;

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
  String title;
  String image_url;
  String recipe_id;
  RecipeListItem(this.title, this.image_url, this.recipe_id);

  @override
  build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return new Card(
      color: Colors.white,
      child: new Column(
        children: <Widget>[
          new Hero(
            tag: image_url,
            child: new Row(children: <Widget>[
              new Flexible(
                child: new Image.network(image_url, fit: ImageFit.cover),
              ),
            ]),
          )
        ],
      ),
    );
  }
}
