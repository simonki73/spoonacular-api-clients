/**
 * spoonacular API
 * The spoonacular Nutrition, Recipe, and Food API allows you to access over 380,000 recipes, thousands of ingredients, 800,000 food products, and 100,000 menu items. Our food ontology and semantic recipe search engine makes it possible to search for recipes using natural language queries, such as \"gluten free brownies without sugar\" or \"low fat vegan cupcakes.\" You can automatically calculate the nutritional information for any recipe, analyze recipe costs, visualize ingredient lists, find recipes for what's in your fridge, find recipes based on special diets, nutritional requirements, or favorite ingredients, classify recipes into types and cuisines, convert ingredient amounts, or even compute an entire meal plan. With our powerful API, you can create many kinds of food and especially nutrition apps.  Special diets/dietary requirements currently available include: vegan, vegetarian, pescetarian, gluten free, grain free, dairy free, high protein, whole 30, low sodium, low carb, Paleo, ketogenic, FODMAP, and Primal.
 *
 * The version of the OpenAPI document: 1.1
 * Contact: mail@spoonacular.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 *
 */

import ApiClient from '../ApiClient';
import GetRecipeNutritionWidgetByID200ResponseBadInner from './GetRecipeNutritionWidgetByID200ResponseBadInner';
import GetRecipeNutritionWidgetByID200ResponseGoodInner from './GetRecipeNutritionWidgetByID200ResponseGoodInner';

/**
 * The GetRecipeNutritionWidgetByID200Response model module.
 * @module com.spoonacular.client/com.spoonacular.client.model/GetRecipeNutritionWidgetByID200Response
 * @version 1.1
 */
class GetRecipeNutritionWidgetByID200Response {
    /**
     * Constructs a new <code>GetRecipeNutritionWidgetByID200Response</code>.
     * 
     * @alias module:com.spoonacular.client/com.spoonacular.client.model/GetRecipeNutritionWidgetByID200Response
     * @param calories {String} 
     * @param carbs {String} 
     * @param fat {String} 
     * @param protein {String} 
     * @param bad {Array.<module:com.spoonacular.client/com.spoonacular.client.model/GetRecipeNutritionWidgetByID200ResponseBadInner>} 
     * @param good {Array.<module:com.spoonacular.client/com.spoonacular.client.model/GetRecipeNutritionWidgetByID200ResponseGoodInner>} 
     */
    constructor(calories, carbs, fat, protein, bad, good) { 
        
        GetRecipeNutritionWidgetByID200Response.initialize(this, calories, carbs, fat, protein, bad, good);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj, calories, carbs, fat, protein, bad, good) { 
        obj['calories'] = calories;
        obj['carbs'] = carbs;
        obj['fat'] = fat;
        obj['protein'] = protein;
        obj['bad'] = bad;
        obj['good'] = good;
    }

    /**
     * Constructs a <code>GetRecipeNutritionWidgetByID200Response</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:com.spoonacular.client/com.spoonacular.client.model/GetRecipeNutritionWidgetByID200Response} obj Optional instance to populate.
     * @return {module:com.spoonacular.client/com.spoonacular.client.model/GetRecipeNutritionWidgetByID200Response} The populated <code>GetRecipeNutritionWidgetByID200Response</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new GetRecipeNutritionWidgetByID200Response();

            if (data.hasOwnProperty('calories')) {
                obj['calories'] = ApiClient.convertToType(data['calories'], 'String');
            }
            if (data.hasOwnProperty('carbs')) {
                obj['carbs'] = ApiClient.convertToType(data['carbs'], 'String');
            }
            if (data.hasOwnProperty('fat')) {
                obj['fat'] = ApiClient.convertToType(data['fat'], 'String');
            }
            if (data.hasOwnProperty('protein')) {
                obj['protein'] = ApiClient.convertToType(data['protein'], 'String');
            }
            if (data.hasOwnProperty('bad')) {
                obj['bad'] = ApiClient.convertToType(data['bad'], [GetRecipeNutritionWidgetByID200ResponseBadInner]);
            }
            if (data.hasOwnProperty('good')) {
                obj['good'] = ApiClient.convertToType(data['good'], [GetRecipeNutritionWidgetByID200ResponseGoodInner]);
            }
        }
        return obj;
    }


}

/**
 * @member {String} calories
 */
GetRecipeNutritionWidgetByID200Response.prototype['calories'] = undefined;

/**
 * @member {String} carbs
 */
GetRecipeNutritionWidgetByID200Response.prototype['carbs'] = undefined;

/**
 * @member {String} fat
 */
GetRecipeNutritionWidgetByID200Response.prototype['fat'] = undefined;

/**
 * @member {String} protein
 */
GetRecipeNutritionWidgetByID200Response.prototype['protein'] = undefined;

/**
 * @member {Array.<module:com.spoonacular.client/com.spoonacular.client.model/GetRecipeNutritionWidgetByID200ResponseBadInner>} bad
 */
GetRecipeNutritionWidgetByID200Response.prototype['bad'] = undefined;

/**
 * @member {Array.<module:com.spoonacular.client/com.spoonacular.client.model/GetRecipeNutritionWidgetByID200ResponseGoodInner>} good
 */
GetRecipeNutritionWidgetByID200Response.prototype['good'] = undefined;






export default GetRecipeNutritionWidgetByID200Response;
