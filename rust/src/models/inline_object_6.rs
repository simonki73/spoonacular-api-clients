/*
 * spoonacular API
 *
 * The spoonacular Nutrition, Recipe, and Food API allows you to access over 380,000 recipes, thousands of ingredients, 80,000 food products, and 100,000 menu items. Our food ontology and semantic recipe search engine makes it possible to search for recipes using natural language queries, such as \"gluten free brownies without sugar\" or \"low fat vegan cupcakes.\" You can automatically calculate the nutritional information for any recipe, analyze recipe costs, visualize ingredient lists, find recipes for what's in your fridge, find recipes based on special diets, nutritional requirements, or favorite ingredients, classify recipes into types and cuisines, convert ingredient amounts, or even compute an entire meal plan. With our powerful API, you can create many kinds of food and especially nutrition apps.  Special diets/dietary requirements currently available include: vegan, vegetarian, pescetarian, gluten free, grain free, dairy free, high protein, whole 30, low sodium, low carb, Paleo, ketogenic, FODMAP, and Primal.
 *
 * The version of the OpenAPI document: 1.0
 * Contact: david@spoonacular.com
 * Generated by: https://openapi-generator.tech
 */


#[allow(unused_imports)]
use serde_json::Value;

#[derive(Debug, Serialize, Deserialize)]
pub struct InlineObject6 {
    /// The ingredient list of the recipe, one ingredient per line.
    #[serde(rename = "ingredientList")]
    pub ingredient_list: String,
    /// The number of servings that you can make from the ingredients.
    #[serde(rename = "servings")]
    pub servings: f32,
    /// Whether nutrition data should be added to correctly parsed ingredients.
    #[serde(rename = "includeNutrition")]
    pub include_nutrition: Option<bool>,
}

impl InlineObject6 {
    pub fn new(ingredient_list: String, servings: f32) -> InlineObject6 {
        InlineObject6 {
            ingredient_list: ingredient_list,
            servings: servings,
            include_nutrition: None,
        }
    }
}
