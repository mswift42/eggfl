import 'package:eggflutter/services/Recipe.dart';
import 'dart:convert';

final List<Recipe> mockrecipes = <Recipe>[
  new Recipe(
      publisher: "The Pioneer Woman",
      title: "French Toast",
      source_url: "http://www.simplyrecipes.com/recipes/french_toast/",
      image_url: "http://static.food2fork.com/frenchtoast300x200b2da65d4.jpg",
      publisher_url: "http://www.simplyrecipes.com",
      recipe_id: "36355",
      ingredients: [
        "4 eggs",
        "2/3 cup milk",
        "2 teaspoons of cinnamon",
        "8 thick slices of 2-day-old bread",
        "Butter",
        "Maple syrup",
        "2 teaspoons freshly grated orange zest",
        "1/4 cup Triple Sec",
        "Fresh berries"
      ]),
  new Recipe(
      publisher: "The Pioneer Woman",
      title: "French Onion Soup Stuffed Mushrooms",
      source_url:
          "http://thepioneerwoman.com/cooking/2009/11/french-onion-soup-stuffed-mushrooms/",
      image_url: "http://static.food2fork.com/5200405868_e86da8e6e8_oceea.jpg",
      publisher_url: "http://thepioneerwoman.com",
      recipe_id: "47078",
      ingredients: [
        "4 eggs",
        "2/3 cup milk",
        "2 teaspoons of cinnamon",
        "8 thick slices of 2-day-old bread",
        "Butter",
        "Maple syrup",
        "2 teaspoons freshly grated orange zest",
        "1/4 cup Triple Sec",
        "Fresh berries"
      ]),
  new Recipe(
      publisher: "All Recipes",
      title: "Easy Slow Cooker French Dip",
      source_url:
          "http://allrecipes.com/Recipe/Easy-Slow-Cooker-French-Dip/Detail.aspx",
      image_url: "http://static.food2fork.com/103167cea.jpg",
      publisher_url: "http://allrecipes.com",
      recipe_id: "12360"),
  new Recipe(
      publisher: "Closet Cooking",
      title: "Pumpkin Pie French Toast",
      source_url:
          "http://www.closetcooking.com/2009/11/pumpkin-pie-french-toast.html",
      image_url:
          "http://static.food2fork.com/PumpkinPieFrenchToast15002845c7fe.jpg",
      publisher_url: "http://closetcooking.com",
      recipe_id: "35499"),
  new Recipe(
      publisher: "The Pioneer Woman",
      title: "Perfect French Fries",
      source_url:
          "http://thepioneerwoman.com/cooking/2012/01/perfect-french-fries/",
      image_url: "http://static.food2fork.com/fries4d41.jpg",
      publisher_url: "http://thepioneerwoman.com",
      recipe_id: "46959"),
  new Recipe(
      publisher: "The Pioneer Woman",
      title: "Baked French Toast",
      source_url:
          "http://thepioneerwoman.com/cooking/2010/05/cinnamon-baked-french-toast/",
      image_url: "http://static.food2fork.com/4573173616_0ed83c1ee1_o91e9.jpg",
      publisher_url: "http://thepioneerwoman.com",
      recipe_id: "47139"),
  new Recipe(
      publisher: "Two Peas and Their Pod",
      title: "Cannoli Stuffed French Toast",
      source_url:
          "http://www.twopeasandtheirpod.com/cannoli-stuffed-french-toast/",
      image_url:
          "http://static.food2fork.com/cannolistuffedfrenchtoast48a37.jpg",
      publisher_url: "http://www.twopeasandtheirpod.com",
      recipe_id: "54279"),
];
