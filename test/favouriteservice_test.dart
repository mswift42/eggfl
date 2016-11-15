import 'package:test/test.dart';
import 'package:eggflutter/services/Recipe.dart' show Recipe;
import 'package:eggflutter/services/FavouriteService.dart'
    show FavouriteService;
import 'package:eggflutter/services/mockRecipeService/MockRecipeService.dart'
    show mockrecipes;

void main() {
  test('favouriteService initializes an empty set of recipes', () {
    var fs = new FavouriteService();
    expect(fs.favourites.length, 0);
  });
  test('addFavourite adds a recipe to favourites.', () {
    var fs = new FavouriteService();
    Recipe r1 = mockrecipes[0];
    fs.addFavourite(r1);
    expect(fs.favourites.length, 1);
    expect(fs.isFavourite(r1), true);
  });
}
