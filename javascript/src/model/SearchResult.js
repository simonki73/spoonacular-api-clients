/**
 * spoonacular API
 * The spoonacular Nutrition, Recipe, and Food API allows you to access over thousands of recipes, thousands of ingredients, 800,000 food products, over 100,000 menu items, and restaurants. Our food ontology and semantic recipe search engine makes it possible to search for recipes using natural language queries, such as \"gluten free brownies without sugar\" or \"low fat vegan cupcakes.\" You can automatically calculate the nutritional information for any recipe, analyze recipe costs, visualize ingredient lists, find recipes for what's in your fridge, find recipes based on special diets, nutritional requirements, or favorite ingredients, classify recipes into types and cuisines, convert ingredient amounts, or even compute an entire meal plan. With our powerful API, you can create many kinds of food and especially nutrition apps.  Special diets/dietary requirements currently available include: vegan, vegetarian, pescetarian, gluten free, grain free, dairy free, high protein, whole 30, low sodium, low carb, Paleo, ketogenic, FODMAP, and Primal.
 *
 * The version of the OpenAPI document: 2.0.1
 * Contact: mail@spoonacular.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 *
 */

import ApiClient from '../ApiClient';

/**
 * The SearchResult model module.
 * @module model/SearchResult
 * @version 2.0.1
 */
class SearchResult {
    /**
     * Constructs a new <code>SearchResult</code>.
     * 
     * @alias module:model/SearchResult
     * @param name {String} 
     */
    constructor(name) { 
        
        SearchResult.initialize(this, name);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj, name) { 
        obj['name'] = name;
    }

    /**
     * Constructs a <code>SearchResult</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/SearchResult} obj Optional instance to populate.
     * @return {module:model/SearchResult} The populated <code>SearchResult</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new SearchResult();

            if (data.hasOwnProperty('image')) {
                obj['image'] = ApiClient.convertToType(data['image'], 'String');
            }
            if (data.hasOwnProperty('link')) {
                obj['link'] = ApiClient.convertToType(data['link'], 'String');
            }
            if (data.hasOwnProperty('name')) {
                obj['name'] = ApiClient.convertToType(data['name'], 'String');
            }
            if (data.hasOwnProperty('type')) {
                obj['type'] = ApiClient.convertToType(data['type'], 'String');
            }
            if (data.hasOwnProperty('kvtable')) {
                obj['kvtable'] = ApiClient.convertToType(data['kvtable'], 'String');
            }
            if (data.hasOwnProperty('content')) {
                obj['content'] = ApiClient.convertToType(data['content'], 'String');
            }
            if (data.hasOwnProperty('id')) {
                obj['id'] = ApiClient.convertToType(data['id'], 'Number');
            }
            if (data.hasOwnProperty('relevance')) {
                obj['relevance'] = ApiClient.convertToType(data['relevance'], 'Number');
            }
        }
        return obj;
    }

    /**
     * Validates the JSON data with respect to <code>SearchResult</code>.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @return {boolean} to indicate whether the JSON data is valid with respect to <code>SearchResult</code>.
     */
    static validateJSON(data) {
        // check to make sure all required properties are present in the JSON string
        for (const property of SearchResult.RequiredProperties) {
            if (!data.hasOwnProperty(property)) {
                throw new Error("The required field `" + property + "` is not found in the JSON data: " + JSON.stringify(data));
            }
        }
        // ensure the json data is a string
        if (data['image'] && !(typeof data['image'] === 'string' || data['image'] instanceof String)) {
            throw new Error("Expected the field `image` to be a primitive type in the JSON string but got " + data['image']);
        }
        // ensure the json data is a string
        if (data['link'] && !(typeof data['link'] === 'string' || data['link'] instanceof String)) {
            throw new Error("Expected the field `link` to be a primitive type in the JSON string but got " + data['link']);
        }
        // ensure the json data is a string
        if (data['name'] && !(typeof data['name'] === 'string' || data['name'] instanceof String)) {
            throw new Error("Expected the field `name` to be a primitive type in the JSON string but got " + data['name']);
        }
        // ensure the json data is a string
        if (data['type'] && !(typeof data['type'] === 'string' || data['type'] instanceof String)) {
            throw new Error("Expected the field `type` to be a primitive type in the JSON string but got " + data['type']);
        }
        // ensure the json data is a string
        if (data['kvtable'] && !(typeof data['kvtable'] === 'string' || data['kvtable'] instanceof String)) {
            throw new Error("Expected the field `kvtable` to be a primitive type in the JSON string but got " + data['kvtable']);
        }
        // ensure the json data is a string
        if (data['content'] && !(typeof data['content'] === 'string' || data['content'] instanceof String)) {
            throw new Error("Expected the field `content` to be a primitive type in the JSON string but got " + data['content']);
        }

        return true;
    }


}

SearchResult.RequiredProperties = ["name"];

/**
 * @member {String} image
 */
SearchResult.prototype['image'] = undefined;

/**
 * @member {String} link
 */
SearchResult.prototype['link'] = undefined;

/**
 * @member {String} name
 */
SearchResult.prototype['name'] = undefined;

/**
 * @member {String} type
 */
SearchResult.prototype['type'] = undefined;

/**
 * @member {String} kvtable
 */
SearchResult.prototype['kvtable'] = undefined;

/**
 * @member {String} content
 */
SearchResult.prototype['content'] = undefined;

/**
 * @member {Number} id
 */
SearchResult.prototype['id'] = undefined;

/**
 * @member {Number} relevance
 */
SearchResult.prototype['relevance'] = undefined;






export default SearchResult;

