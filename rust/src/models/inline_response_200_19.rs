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
pub struct InlineResponse20019 {
    #[serde(rename = "sourceAmount")]
    pub source_amount: f32,
    #[serde(rename = "sourceUnit")]
    pub source_unit: String,
    #[serde(rename = "targetAmount")]
    pub target_amount: f32,
    #[serde(rename = "targetUnit")]
    pub target_unit: String,
    #[serde(rename = "answer")]
    pub answer: String,
}

impl InlineResponse20019 {
    pub fn new(source_amount: f32, source_unit: String, target_amount: f32, target_unit: String, answer: String) -> InlineResponse20019 {
        InlineResponse20019 {
            source_amount: source_amount,
            source_unit: source_unit,
            target_amount: target_amount,
            target_unit: target_unit,
            answer: answer,
        }
    }
}
