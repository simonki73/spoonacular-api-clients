/**
 * spoonacular API
 * The spoonacular Nutrition, Recipe, and Food API allows you to access over 380,000 recipes, thousands of ingredients, 800,000 food products, and 100,000 menu items. Our food ontology and semantic recipe search engine makes it possible to search for recipes using natural language queries, such as \"gluten free brownies without sugar\" or \"low fat vegan cupcakes.\" You can automatically calculate the nutritional information for any recipe, analyze recipe costs, visualize ingredient lists, find recipes for what's in your fridge, find recipes based on special diets, nutritional requirements, or favorite ingredients, classify recipes into types and cuisines, convert ingredient amounts, or even compute an entire meal plan. With our powerful API, you can create many kinds of food and especially nutrition apps.  Special diets/dietary requirements currently available include: vegan, vegetarian, pescetarian, gluten free, grain free, dairy free, high protein, whole 30, low sodium, low carb, Paleo, ketogenic, FODMAP, and Primal.
 *
 * The version of the OpenAPI document: 1.0
 * Contact: mail@spoonacular.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 *
 */

import ApiClient from '../ApiClient';
import InlineResponse20048NutritionCaloriesConfidenceRange95Percent from './InlineResponse20048NutritionCaloriesConfidenceRange95Percent';

/**
 * The InlineResponse20048NutritionCalories model module.
 * @module com.spoonacular.client/com.spoonacular.client.model/InlineResponse20048NutritionCalories
 * @version 1.0
 */
class InlineResponse20048NutritionCalories {
    /**
     * Constructs a new <code>InlineResponse20048NutritionCalories</code>.
     * @alias module:com.spoonacular.client/com.spoonacular.client.model/InlineResponse20048NutritionCalories
     * @param value {Number} 
     * @param unit {String} 
     * @param confidenceRange95Percent {module:com.spoonacular.client/com.spoonacular.client.model/InlineResponse20048NutritionCaloriesConfidenceRange95Percent} 
     * @param standardDeviation {Number} 
     */
    constructor(value, unit, confidenceRange95Percent, standardDeviation) { 
        
        InlineResponse20048NutritionCalories.initialize(this, value, unit, confidenceRange95Percent, standardDeviation);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj, value, unit, confidenceRange95Percent, standardDeviation) { 
        obj['value'] = value;
        obj['unit'] = unit;
        obj['confidenceRange95Percent'] = confidenceRange95Percent;
        obj['standardDeviation'] = standardDeviation;
    }

    /**
     * Constructs a <code>InlineResponse20048NutritionCalories</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:com.spoonacular.client/com.spoonacular.client.model/InlineResponse20048NutritionCalories} obj Optional instance to populate.
     * @return {module:com.spoonacular.client/com.spoonacular.client.model/InlineResponse20048NutritionCalories} The populated <code>InlineResponse20048NutritionCalories</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new InlineResponse20048NutritionCalories();

            if (data.hasOwnProperty('value')) {
                obj['value'] = ApiClient.convertToType(data['value'], 'Number');
            }
            if (data.hasOwnProperty('unit')) {
                obj['unit'] = ApiClient.convertToType(data['unit'], 'String');
            }
            if (data.hasOwnProperty('confidenceRange95Percent')) {
                obj['confidenceRange95Percent'] = InlineResponse20048NutritionCaloriesConfidenceRange95Percent.constructFromObject(data['confidenceRange95Percent']);
            }
            if (data.hasOwnProperty('standardDeviation')) {
                obj['standardDeviation'] = ApiClient.convertToType(data['standardDeviation'], 'Number');
            }
        }
        return obj;
    }


}

/**
 * @member {Number} value
 */
InlineResponse20048NutritionCalories.prototype['value'] = undefined;

/**
 * @member {String} unit
 */
InlineResponse20048NutritionCalories.prototype['unit'] = undefined;

/**
 * @member {module:com.spoonacular.client/com.spoonacular.client.model/InlineResponse20048NutritionCaloriesConfidenceRange95Percent} confidenceRange95Percent
 */
InlineResponse20048NutritionCalories.prototype['confidenceRange95Percent'] = undefined;

/**
 * @member {Number} standardDeviation
 */
InlineResponse20048NutritionCalories.prototype['standardDeviation'] = undefined;






export default InlineResponse20048NutritionCalories;

