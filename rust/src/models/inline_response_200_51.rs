/*
 * spoonacular API
 *
 * The spoonacular Nutrition, Recipe, and Food API allows you to access over 380,000 recipes, thousands of ingredients, 800,000 food products, and 100,000 menu items. Our food ontology and semantic recipe search engine makes it possible to search for recipes using natural language queries, such as \"gluten free brownies without sugar\" or \"low fat vegan cupcakes.\" You can automatically calculate the nutritional information for any recipe, analyze recipe costs, visualize ingredient lists, find recipes for what's in your fridge, find recipes based on special diets, nutritional requirements, or favorite ingredients, classify recipes into types and cuisines, convert ingredient amounts, or even compute an entire meal plan. With our powerful API, you can create many kinds of food and especially nutrition apps.  Special diets/dietary requirements currently available include: vegan, vegetarian, pescetarian, gluten free, grain free, dairy free, high protein, whole 30, low sodium, low carb, Paleo, ketogenic, FODMAP, and Primal.
 *
 * The version of the OpenAPI document: 1.0
 * Contact: mail@spoonacular.com
 * Generated by: https://openapi-generator.tech
 */


#[allow(unused_imports)]
use serde_json::Value;

#[derive(Debug, Serialize, Deserialize)]
pub struct InlineResponse20051 {
    #[serde(rename = "Articles")]
    pub articles: Vec<Value>,
    #[serde(rename = "Grocery Products")]
    pub grocery_products: Vec<Value>,
    #[serde(rename = "Menu Items")]
    pub menu_items: Vec<Value>,
    #[serde(rename = "Recipes")]
    pub recipes: Vec<Value>,
}

impl InlineResponse20051 {
    pub fn new(articles: Vec<Value>, grocery_products: Vec<Value>, menu_items: Vec<Value>, recipes: Vec<Value>) -> InlineResponse20051 {
        InlineResponse20051 {
            articles: articles,
            grocery_products: grocery_products,
            menu_items: menu_items,
            recipes: recipes,
        }
    }
}
