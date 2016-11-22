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
  String publisher;
  String recipe_id;
  RecipeListItem(this.title, this.image_url, this.publisher, this.recipe_id);

  @override
  build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
  }
}
