import 'package:eggflutter/services/Recipe.dart' show Recipe;

class FavouriteService {
  final Set<Recipe> _favourites = new Set<Recipe>();

  Set<Recipe> get favourites => _favourites;

  void addFavourite(Recipe recipe) {
    _favourites.add(recipe);
  }

  void deleteFavourite(Recipe recipe) {
    _favourites.remove(recipe);
  }

  bool isFavourite(Recipe recipe) {
    return _favourites.contains(recipe);
  }


}