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
pub struct InlineResponse20038Days {
    #[serde(rename = "nutritionSummary")]
    pub nutrition_summary: Option<::models::InlineResponse20038NutritionSummary>,
    #[serde(rename = "nutritionSummaryBreakfast")]
    pub nutrition_summary_breakfast: Option<::models::InlineResponse20038NutritionSummary>,
    #[serde(rename = "nutritionSummaryLunch")]
    pub nutrition_summary_lunch: Option<::models::InlineResponse20038NutritionSummary>,
    #[serde(rename = "nutritionSummaryDinner")]
    pub nutrition_summary_dinner: Option<::models::InlineResponse20038NutritionSummary>,
    #[serde(rename = "date")]
    pub date: f32,
    #[serde(rename = "day")]
    pub day: String,
    #[serde(rename = "items")]
    pub items: Option<Vec<::models::InlineResponse20038Items>>,
}

impl InlineResponse20038Days {
    pub fn new(date: f32, day: String) -> InlineResponse20038Days {
        InlineResponse20038Days {
            nutrition_summary: None,
            nutrition_summary_breakfast: None,
            nutrition_summary_lunch: None,
            nutrition_summary_dinner: None,
            date: date,
            day: day,
            items: None,
        }
    }
}
