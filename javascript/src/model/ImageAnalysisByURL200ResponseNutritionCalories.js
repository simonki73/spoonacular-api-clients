/**
 * spoonacular API
 * The spoonacular Nutrition, Recipe, and Food API allows you to access over thousands of recipes, thousands of ingredients, 800,000 food products, over 100,000 menu items, and restaurants. Our food ontology and semantic recipe search engine makes it possible to search for recipes using natural language queries, such as \"gluten free brownies without sugar\" or \"low fat vegan cupcakes.\" You can automatically calculate the nutritional information for any recipe, analyze recipe costs, visualize ingredient lists, find recipes for what's in your fridge, find recipes based on special diets, nutritional requirements, or favorite ingredients, classify recipes into types and cuisines, convert ingredient amounts, or even compute an entire meal plan. With our powerful API, you can create many kinds of food and especially nutrition apps.  Special diets/dietary requirements currently available include: vegan, vegetarian, pescetarian, gluten free, grain free, dairy free, high protein, whole 30, low sodium, low carb, Paleo, ketogenic, FODMAP, and Primal.
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
import ImageAnalysisByURL200ResponseNutritionCaloriesConfidenceRange95Percent from './ImageAnalysisByURL200ResponseNutritionCaloriesConfidenceRange95Percent';

/**
 * The ImageAnalysisByURL200ResponseNutritionCalories model module.
 * @module model/ImageAnalysisByURL200ResponseNutritionCalories
 * @version 1.1
 */
class ImageAnalysisByURL200ResponseNutritionCalories {
    /**
     * Constructs a new <code>ImageAnalysisByURL200ResponseNutritionCalories</code>.
     * @alias module:model/ImageAnalysisByURL200ResponseNutritionCalories
     * @param value {Number} 
     * @param unit {String} 
     * @param confidenceRange95Percent {module:model/ImageAnalysisByURL200ResponseNutritionCaloriesConfidenceRange95Percent} 
     * @param standardDeviation {Number} 
     */
    constructor(value, unit, confidenceRange95Percent, standardDeviation) { 
        
        ImageAnalysisByURL200ResponseNutritionCalories.initialize(this, value, unit, confidenceRange95Percent, standardDeviation);
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
     * Constructs a <code>ImageAnalysisByURL200ResponseNutritionCalories</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/ImageAnalysisByURL200ResponseNutritionCalories} obj Optional instance to populate.
     * @return {module:model/ImageAnalysisByURL200ResponseNutritionCalories} The populated <code>ImageAnalysisByURL200ResponseNutritionCalories</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new ImageAnalysisByURL200ResponseNutritionCalories();

            if (data.hasOwnProperty('value')) {
                obj['value'] = ApiClient.convertToType(data['value'], 'Number');
            }
            if (data.hasOwnProperty('unit')) {
                obj['unit'] = ApiClient.convertToType(data['unit'], 'String');
            }
            if (data.hasOwnProperty('confidenceRange95Percent')) {
                obj['confidenceRange95Percent'] = ImageAnalysisByURL200ResponseNutritionCaloriesConfidenceRange95Percent.constructFromObject(data['confidenceRange95Percent']);
            }
            if (data.hasOwnProperty('standardDeviation')) {
                obj['standardDeviation'] = ApiClient.convertToType(data['standardDeviation'], 'Number');
            }
        }
        return obj;
    }

    /**
     * Validates the JSON data with respect to <code>ImageAnalysisByURL200ResponseNutritionCalories</code>.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @return {boolean} to indicate whether the JSON data is valid with respect to <code>ImageAnalysisByURL200ResponseNutritionCalories</code>.
     */
    static validateJSON(data) {
        // check to make sure all required properties are present in the JSON string
        for (const property of ImageAnalysisByURL200ResponseNutritionCalories.RequiredProperties) {
            if (!data.hasOwnProperty(property)) {
                throw new Error("The required field `" + property + "` is not found in the JSON data: " + JSON.stringify(data));
            }
        }
        // ensure the json data is a string
        if (data['unit'] && !(typeof data['unit'] === 'string' || data['unit'] instanceof String)) {
            throw new Error("Expected the field `unit` to be a primitive type in the JSON string but got " + data['unit']);
        }
        // validate the optional field `confidenceRange95Percent`
        if (data['confidenceRange95Percent']) { // data not null
          ImageAnalysisByURL200ResponseNutritionCaloriesConfidenceRange95Percent.validateJSON(data['confidenceRange95Percent']);
        }

        return true;
    }


}

ImageAnalysisByURL200ResponseNutritionCalories.RequiredProperties = ["value", "unit", "confidenceRange95Percent", "standardDeviation"];

/**
 * @member {Number} value
 */
ImageAnalysisByURL200ResponseNutritionCalories.prototype['value'] = undefined;

/**
 * @member {String} unit
 */
ImageAnalysisByURL200ResponseNutritionCalories.prototype['unit'] = undefined;

/**
 * @member {module:model/ImageAnalysisByURL200ResponseNutritionCaloriesConfidenceRange95Percent} confidenceRange95Percent
 */
ImageAnalysisByURL200ResponseNutritionCalories.prototype['confidenceRange95Percent'] = undefined;

/**
 * @member {Number} standardDeviation
 */
ImageAnalysisByURL200ResponseNutritionCalories.prototype['standardDeviation'] = undefined;






export default ImageAnalysisByURL200ResponseNutritionCalories;
