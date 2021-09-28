# coding: utf-8

# flake8: noqa
"""
    spoonacular API

    The spoonacular Nutrition, Recipe, and Food API allows you to access over 380,000 recipes, thousands of ingredients, 800,000 food products, and 100,000 menu items. Our food ontology and semantic recipe search engine makes it possible to search for recipes using natural language queries, such as \"gluten free brownies without sugar\" or \"low fat vegan cupcakes.\" You can automatically calculate the nutritional information for any recipe, analyze recipe costs, visualize ingredient lists, find recipes for what's in your fridge, find recipes based on special diets, nutritional requirements, or favorite ingredients, classify recipes into types and cuisines, convert ingredient amounts, or even compute an entire meal plan. With our powerful API, you can create many kinds of food and especially nutrition apps.  Special diets/dietary requirements currently available include: vegan, vegetarian, pescetarian, gluten free, grain free, dairy free, high protein, whole 30, low sodium, low carb, Paleo, ketogenic, FODMAP, and Primal.  # noqa: E501

    The version of the OpenAPI document: 1.0
    Contact: mail@spoonacular.com
    Generated by: https://openapi-generator.tech
"""


from __future__ import absolute_import

# import models into model package
from spoonacular.com.spoonacular.client.model.food_ingredients_map_products import FoodIngredientsMapProducts
from spoonacular.com.spoonacular.client.model.inline_object import InlineObject
from spoonacular.com.spoonacular.client.model.inline_object1 import InlineObject1
from spoonacular.com.spoonacular.client.model.inline_object2 import InlineObject2
from spoonacular.com.spoonacular.client.model.inline_object3 import InlineObject3
from spoonacular.com.spoonacular.client.model.inline_object4 import InlineObject4
from spoonacular.com.spoonacular.client.model.inline_object5 import InlineObject5
from spoonacular.com.spoonacular.client.model.inline_object6 import InlineObject6
from spoonacular.com.spoonacular.client.model.inline_object7 import InlineObject7
from spoonacular.com.spoonacular.client.model.inline_object8 import InlineObject8
from spoonacular.com.spoonacular.client.model.inline_response200 import InlineResponse200
from spoonacular.com.spoonacular.client.model.inline_response2001 import InlineResponse2001
from spoonacular.com.spoonacular.client.model.inline_response20010 import InlineResponse20010
from spoonacular.com.spoonacular.client.model.inline_response20010_amount import InlineResponse20010Amount
from spoonacular.com.spoonacular.client.model.inline_response20010_amount_metric import InlineResponse20010AmountMetric
from spoonacular.com.spoonacular.client.model.inline_response20010_ingredients import InlineResponse20010Ingredients
from spoonacular.com.spoonacular.client.model.inline_response20011 import InlineResponse20011
from spoonacular.com.spoonacular.client.model.inline_response20011_ingredients import InlineResponse20011Ingredients
from spoonacular.com.spoonacular.client.model.inline_response20012 import InlineResponse20012
from spoonacular.com.spoonacular.client.model.inline_response20013 import InlineResponse20013
from spoonacular.com.spoonacular.client.model.inline_response20013_ingredients import InlineResponse20013Ingredients
from spoonacular.com.spoonacular.client.model.inline_response20013_ingredients1 import InlineResponse20013Ingredients1
from spoonacular.com.spoonacular.client.model.inline_response20013_parsed_instructions import InlineResponse20013ParsedInstructions
from spoonacular.com.spoonacular.client.model.inline_response20013_steps import InlineResponse20013Steps
from spoonacular.com.spoonacular.client.model.inline_response20014 import InlineResponse20014
from spoonacular.com.spoonacular.client.model.inline_response20015 import InlineResponse20015
from spoonacular.com.spoonacular.client.model.inline_response20016 import InlineResponse20016
from spoonacular.com.spoonacular.client.model.inline_response20017 import InlineResponse20017
from spoonacular.com.spoonacular.client.model.inline_response20018 import InlineResponse20018
from spoonacular.com.spoonacular.client.model.inline_response20018_dishes import InlineResponse20018Dishes
from spoonacular.com.spoonacular.client.model.inline_response20018_ingredients import InlineResponse20018Ingredients
from spoonacular.com.spoonacular.client.model.inline_response20019 import InlineResponse20019
from spoonacular.com.spoonacular.client.model.inline_response2002 import InlineResponse2002
from spoonacular.com.spoonacular.client.model.inline_response20020 import InlineResponse20020
from spoonacular.com.spoonacular.client.model.inline_response20021 import InlineResponse20021
from spoonacular.com.spoonacular.client.model.inline_response20021_calories import InlineResponse20021Calories
from spoonacular.com.spoonacular.client.model.inline_response20021_calories_confidence_range95_percent import InlineResponse20021CaloriesConfidenceRange95Percent
from spoonacular.com.spoonacular.client.model.inline_response20022 import InlineResponse20022
from spoonacular.com.spoonacular.client.model.inline_response20022_nutrition import InlineResponse20022Nutrition
from spoonacular.com.spoonacular.client.model.inline_response20023 import InlineResponse20023
from spoonacular.com.spoonacular.client.model.inline_response20023_ingredients import InlineResponse20023Ingredients
from spoonacular.com.spoonacular.client.model.inline_response20024 import InlineResponse20024
from spoonacular.com.spoonacular.client.model.inline_response20025 import InlineResponse20025
from spoonacular.com.spoonacular.client.model.inline_response20025_results import InlineResponse20025Results
from spoonacular.com.spoonacular.client.model.inline_response20026 import InlineResponse20026
from spoonacular.com.spoonacular.client.model.inline_response20027 import InlineResponse20027
from spoonacular.com.spoonacular.client.model.inline_response20028 import InlineResponse20028
from spoonacular.com.spoonacular.client.model.inline_response20028_ingredients import InlineResponse20028Ingredients
from spoonacular.com.spoonacular.client.model.inline_response20028_nutrition import InlineResponse20028Nutrition
from spoonacular.com.spoonacular.client.model.inline_response20028_servings import InlineResponse20028Servings
from spoonacular.com.spoonacular.client.model.inline_response20029 import InlineResponse20029
from spoonacular.com.spoonacular.client.model.inline_response20029_custom_foods import InlineResponse20029CustomFoods
from spoonacular.com.spoonacular.client.model.inline_response2003 import InlineResponse2003
from spoonacular.com.spoonacular.client.model.inline_response20030 import InlineResponse20030
from spoonacular.com.spoonacular.client.model.inline_response20030_ingredients import InlineResponse20030Ingredients
from spoonacular.com.spoonacular.client.model.inline_response20031 import InlineResponse20031
from spoonacular.com.spoonacular.client.model.inline_response20031_comparable_products import InlineResponse20031ComparableProducts
from spoonacular.com.spoonacular.client.model.inline_response20031_comparable_products_protein import InlineResponse20031ComparableProductsProtein
from spoonacular.com.spoonacular.client.model.inline_response20032 import InlineResponse20032
from spoonacular.com.spoonacular.client.model.inline_response20032_results import InlineResponse20032Results
from spoonacular.com.spoonacular.client.model.inline_response20033 import InlineResponse20033
from spoonacular.com.spoonacular.client.model.inline_response20034 import InlineResponse20034
from spoonacular.com.spoonacular.client.model.inline_response20035 import InlineResponse20035
from spoonacular.com.spoonacular.client.model.inline_response20035_menu_items import InlineResponse20035MenuItems
from spoonacular.com.spoonacular.client.model.inline_response20036 import InlineResponse20036
from spoonacular.com.spoonacular.client.model.inline_response20037 import InlineResponse20037
from spoonacular.com.spoonacular.client.model.inline_response20037_nutrients import InlineResponse20037Nutrients
from spoonacular.com.spoonacular.client.model.inline_response20038 import InlineResponse20038
from spoonacular.com.spoonacular.client.model.inline_response20038_days import InlineResponse20038Days
from spoonacular.com.spoonacular.client.model.inline_response20038_items import InlineResponse20038Items
from spoonacular.com.spoonacular.client.model.inline_response20038_nutrition_summary import InlineResponse20038NutritionSummary
from spoonacular.com.spoonacular.client.model.inline_response20038_nutrition_summary_nutrients import InlineResponse20038NutritionSummaryNutrients
from spoonacular.com.spoonacular.client.model.inline_response20038_value import InlineResponse20038Value
from spoonacular.com.spoonacular.client.model.inline_response20039 import InlineResponse20039
from spoonacular.com.spoonacular.client.model.inline_response2003_extended_ingredients import InlineResponse2003ExtendedIngredients
from spoonacular.com.spoonacular.client.model.inline_response2003_measures import InlineResponse2003Measures
from spoonacular.com.spoonacular.client.model.inline_response2003_measures_metric import InlineResponse2003MeasuresMetric
from spoonacular.com.spoonacular.client.model.inline_response2003_wine_pairing import InlineResponse2003WinePairing
from spoonacular.com.spoonacular.client.model.inline_response2003_wine_pairing_product_matches import InlineResponse2003WinePairingProductMatches
from spoonacular.com.spoonacular.client.model.inline_response2004 import InlineResponse2004
from spoonacular.com.spoonacular.client.model.inline_response20040 import InlineResponse20040
from spoonacular.com.spoonacular.client.model.inline_response20040_days import InlineResponse20040Days
from spoonacular.com.spoonacular.client.model.inline_response20040_items import InlineResponse20040Items
from spoonacular.com.spoonacular.client.model.inline_response20040_value import InlineResponse20040Value
from spoonacular.com.spoonacular.client.model.inline_response20041 import InlineResponse20041
from spoonacular.com.spoonacular.client.model.inline_response20041_aisles import InlineResponse20041Aisles
from spoonacular.com.spoonacular.client.model.inline_response20041_items import InlineResponse20041Items
from spoonacular.com.spoonacular.client.model.inline_response20041_measures import InlineResponse20041Measures
from spoonacular.com.spoonacular.client.model.inline_response20042 import InlineResponse20042
from spoonacular.com.spoonacular.client.model.inline_response20043 import InlineResponse20043
from spoonacular.com.spoonacular.client.model.inline_response20044 import InlineResponse20044
from spoonacular.com.spoonacular.client.model.inline_response20044_product_matches import InlineResponse20044ProductMatches
from spoonacular.com.spoonacular.client.model.inline_response20045 import InlineResponse20045
from spoonacular.com.spoonacular.client.model.inline_response20046 import InlineResponse20046
from spoonacular.com.spoonacular.client.model.inline_response20046_recommended_wines import InlineResponse20046RecommendedWines
from spoonacular.com.spoonacular.client.model.inline_response20047 import InlineResponse20047
from spoonacular.com.spoonacular.client.model.inline_response20048 import InlineResponse20048
from spoonacular.com.spoonacular.client.model.inline_response20048_category import InlineResponse20048Category
from spoonacular.com.spoonacular.client.model.inline_response20048_nutrition import InlineResponse20048Nutrition
from spoonacular.com.spoonacular.client.model.inline_response20048_nutrition_calories import InlineResponse20048NutritionCalories
from spoonacular.com.spoonacular.client.model.inline_response20048_nutrition_calories_confidence_range95_percent import InlineResponse20048NutritionCaloriesConfidenceRange95Percent
from spoonacular.com.spoonacular.client.model.inline_response20048_recipes import InlineResponse20048Recipes
from spoonacular.com.spoonacular.client.model.inline_response20049 import InlineResponse20049
from spoonacular.com.spoonacular.client.model.inline_response2005 import InlineResponse2005
from spoonacular.com.spoonacular.client.model.inline_response20050 import InlineResponse20050
from spoonacular.com.spoonacular.client.model.inline_response20051 import InlineResponse20051
from spoonacular.com.spoonacular.client.model.inline_response20052 import InlineResponse20052
from spoonacular.com.spoonacular.client.model.inline_response20052_results import InlineResponse20052Results
from spoonacular.com.spoonacular.client.model.inline_response20052_search_results import InlineResponse20052SearchResults
from spoonacular.com.spoonacular.client.model.inline_response20053 import InlineResponse20053
from spoonacular.com.spoonacular.client.model.inline_response20053_videos import InlineResponse20053Videos
from spoonacular.com.spoonacular.client.model.inline_response20054 import InlineResponse20054
from spoonacular.com.spoonacular.client.model.inline_response20055 import InlineResponse20055
from spoonacular.com.spoonacular.client.model.inline_response20056 import InlineResponse20056
from spoonacular.com.spoonacular.client.model.inline_response20056_suggests import InlineResponse20056Suggests
from spoonacular.com.spoonacular.client.model.inline_response2006 import InlineResponse2006
from spoonacular.com.spoonacular.client.model.inline_response2006_recipes import InlineResponse2006Recipes
from spoonacular.com.spoonacular.client.model.inline_response2007 import InlineResponse2007
from spoonacular.com.spoonacular.client.model.inline_response2008 import InlineResponse2008
from spoonacular.com.spoonacular.client.model.inline_response2009 import InlineResponse2009
from spoonacular.com.spoonacular.client.model.inline_response200_results import InlineResponse200Results
from spoonacular.com.spoonacular.client.model.recipes_find_by_ingredients_missed_ingredients import RecipesFindByIngredientsMissedIngredients
from spoonacular.com.spoonacular.client.model.recipes_parse_ingredients_estimated_cost import RecipesParseIngredientsEstimatedCost
from spoonacular.com.spoonacular.client.model.recipes_parse_ingredients_nutrition import RecipesParseIngredientsNutrition
from spoonacular.com.spoonacular.client.model.recipes_parse_ingredients_nutrition_caloric_breakdown import RecipesParseIngredientsNutritionCaloricBreakdown
from spoonacular.com.spoonacular.client.model.recipes_parse_ingredients_nutrition_nutrients import RecipesParseIngredientsNutritionNutrients
from spoonacular.com.spoonacular.client.model.recipes_parse_ingredients_nutrition_properties import RecipesParseIngredientsNutritionProperties
from spoonacular.com.spoonacular.client.model.recipes_parse_ingredients_nutrition_weight_per_serving import RecipesParseIngredientsNutritionWeightPerServing
