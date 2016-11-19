import 'package:flutter/material.dart';
import 'package:eggflutter/services/mockRecipeService/MockRecipeService.dart';
import 'package:flutter/gestures.dart';
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

class RecipeWidget extends StatefulWidget {
  String title;
  String image_url;
  String publisher;
  String publisher_url;
  String recipe_id;
  RecipeWidget(this.title, this.image_url, this.publisher, this.publisher_url,
      this.recipe_id);
  @override
  _RecipeWidgetState createState() => new _RecipeWidgetState(
      title, image_url, publisher, publisher_url, recipe_id);
}

class _RecipeWidgetState extends State<RecipeWidget> {
  String title;
  String image_url;
  String publisher;
  String publisher_url;
  String recipe_id;
  _RecipeWidgetState(this.title, this.image_url, this.publisher,
      this.publisher_url, this.recipe_id);
  @override
  build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    final TextStyle linkStyle =
        themeData.textTheme.body2.copyWith(color: themeData.accentColor);
    final bool isFavourite = false;
    return new Card(
      color: Colors.white,
      child: new Column(
        children: <Widget>[
          new Stack(children: <Widget>[
            new Row(children: <Widget>[
              new Hero(
                  tag: image_url,
                  child: new Flexible(
                      child: new Image.network(image_url, fit: ImageFit.cover)))
            ]),
            new Positioned(
                right: 16.0,
                top: 32.0,
                child: new FloatingActionButton(
                    child: new Icon(
                        isFavourite ? Icons.favorite : Icons.favorite_border),
                    onPressed: null))
          ]),
          new Padding(
              padding: const EdgeInsets.all(16.0), child: new Text(title)),
          new Padding(
              padding: const EdgeInsets.all(16.0),
              child: new Row(children: <Widget>[
                new Flexible(child: new Text(publisher)),
                new RichText(
                    text: new TextSpan(children: <TextSpan>[
                  new LinkTextSpan(
                      style: linkStyle, url: publisher_url, text: publisher),
                ]))
              ])),
        ],
      ),
    );
  }
}
