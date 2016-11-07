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

class RecipeWidget extends StatelessWidget {
  @override
  build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    final TextStyle linkStyle = themeData.textTheme.body2.copyWith(color: themeData.accentColor);
    return new Card(
        color: Colors.white,
        child: new Padding(
          padding: const EdgeInsets.fromLTRB(2.0, 8.0, 2.0, 3.0),
          child: new Column(
            children: <Widget>[
              new Text(mockrecipes[0].title),
              new Image(image: new NetworkImage(mockrecipes[0].image_url)),
              new Row(children: <Widget>[
                new Flexible(child: new Text(mockrecipes[0].publisher)),
                new RichText(text : new TextSpan(
                    children: <TextSpan>[
                    new LinkTextSpan(style: linkStyle, url: mockrecipes[0].publisher_url,
                        text: mockrecipes[0].publisher),
                    ]
                ))
              ])
            ],
          ),
        ));
  }
}
