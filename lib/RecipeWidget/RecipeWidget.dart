import 'package:flutter/material.dart';
import 'package:eggflutter/services/mockRecipeService/MockRecipeService.dart';

class RecipeWidget extends StatelessWidget {
  @override
  build(BuildContext context) {
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
                new Text(mockrecipes[0].publisher_url)
              ])
            ],
          ),
        ));
  }
}
