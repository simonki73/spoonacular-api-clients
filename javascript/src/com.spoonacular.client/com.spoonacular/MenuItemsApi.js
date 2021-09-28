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


import ApiClient from "../ApiClient";
import InlineResponse20032 from '../com.spoonacular.client.model/InlineResponse20032';
import InlineResponse20035 from '../com.spoonacular.client.model/InlineResponse20035';
import InlineResponse20036 from '../com.spoonacular.client.model/InlineResponse20036';

/**
* MenuItems service.
* @module com.spoonacular.client/com.spoonacular/MenuItemsApi
* @version 1.0
*/
export default class MenuItemsApi {

    /**
    * Constructs a new MenuItemsApi. 
    * @alias module:com.spoonacular.client/com.spoonacular/MenuItemsApi
    * @class
    * @param {module:com.spoonacular.client/ApiClient} [apiClient] Optional API client implementation to use,
    * default to {@link module:com.spoonacular.client/ApiClient#instance} if unspecified.
    */
    constructor(apiClient) {
        this.apiClient = apiClient || ApiClient.instance;
    }


    /**
     * Callback function to receive the result of the autocompleteMenuItemSearch operation.
     * @callback module:com.spoonacular.client/com.spoonacular/MenuItemsApi~autocompleteMenuItemSearchCallback
     * @param {String} error Error message, if any.
     * @param {module:com.spoonacular.client/com.spoonacular.client.model/InlineResponse20032} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Autocomplete Menu Item Search
     * Generate suggestions for menu items based on a (partial) query. The matches will be found by looking in the title only.
     * @param {String} query The (partial) search query.
     * @param {Object} opts Optional parameters
     * @param {Number} opts._number The number of results to return (between 1 and 25).
     * @param {module:com.spoonacular.client/com.spoonacular/MenuItemsApi~autocompleteMenuItemSearchCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:com.spoonacular.client/com.spoonacular.client.model/InlineResponse20032}
     */
    autocompleteMenuItemSearch(query, opts, callback) {
      opts = opts || {};
      let postBody = null;
      // verify the required parameter 'query' is set
      if (query === undefined || query === null) {
        throw new Error("Missing the required parameter 'query' when calling autocompleteMenuItemSearch");
      }

      let pathParams = {
      };
      let queryParams = {
        'query': query,
        'number': opts['_number']
      };
      let headerParams = {
      };
      let formParams = {
      };

      let authNames = ['apiKeyScheme'];
      let contentTypes = [];
      let accepts = ['application/json'];
      let returnType = InlineResponse20032;
      return this.apiClient.callApi(
        '/food/menuItems/suggest', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the getMenuItemInformation operation.
     * @callback module:com.spoonacular.client/com.spoonacular/MenuItemsApi~getMenuItemInformationCallback
     * @param {String} error Error message, if any.
     * @param {module:com.spoonacular.client/com.spoonacular.client.model/InlineResponse20036} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Get Menu Item Information
     * Use a menu item id to get all available information about a menu item, such as nutrition.
     * @param {Number} id The item's id.
     * @param {module:com.spoonacular.client/com.spoonacular/MenuItemsApi~getMenuItemInformationCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:com.spoonacular.client/com.spoonacular.client.model/InlineResponse20036}
     */
    getMenuItemInformation(id, callback) {
      let postBody = null;
      // verify the required parameter 'id' is set
      if (id === undefined || id === null) {
        throw new Error("Missing the required parameter 'id' when calling getMenuItemInformation");
      }

      let pathParams = {
        'id': id
      };
      let queryParams = {
      };
      let headerParams = {
      };
      let formParams = {
      };

      let authNames = ['apiKeyScheme'];
      let contentTypes = [];
      let accepts = ['application/json'];
      let returnType = InlineResponse20036;
      return this.apiClient.callApi(
        '/food/menuItems/{id}', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the menuItemNutritionByIDImage operation.
     * @callback module:com.spoonacular.client/com.spoonacular/MenuItemsApi~menuItemNutritionByIDImageCallback
     * @param {String} error Error message, if any.
     * @param {Object} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Menu Item Nutrition by ID Image
     * Visualize a menu item's nutritional information as HTML including CSS.
     * @param {Number} id The menu item id.
     * @param {module:com.spoonacular.client/com.spoonacular/MenuItemsApi~menuItemNutritionByIDImageCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link Object}
     */
    menuItemNutritionByIDImage(id, callback) {
      let postBody = null;
      // verify the required parameter 'id' is set
      if (id === undefined || id === null) {
        throw new Error("Missing the required parameter 'id' when calling menuItemNutritionByIDImage");
      }

      let pathParams = {
        'id': id
      };
      let queryParams = {
      };
      let headerParams = {
      };
      let formParams = {
      };

      let authNames = ['apiKeyScheme'];
      let contentTypes = [];
      let accepts = ['image/png'];
      let returnType = Object;
      return this.apiClient.callApi(
        '/food/menuItems/{id}/nutritionWidget.png', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the menuItemNutritionLabelImage operation.
     * @callback module:com.spoonacular.client/com.spoonacular/MenuItemsApi~menuItemNutritionLabelImageCallback
     * @param {String} error Error message, if any.
     * @param {Object} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Menu Item Nutrition Label Image
     * Visualize a menu item's nutritional label information as an image.
     * @param {Number} id The menu item id.
     * @param {Object} opts Optional parameters
     * @param {Boolean} opts.showOptionalNutrients Whether to show optional nutrients.
     * @param {Boolean} opts.showZeroValues Whether to show zero values.
     * @param {Boolean} opts.showIngredients Whether to show a list of ingredients.
     * @param {module:com.spoonacular.client/com.spoonacular/MenuItemsApi~menuItemNutritionLabelImageCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link Object}
     */
    menuItemNutritionLabelImage(id, opts, callback) {
      opts = opts || {};
      let postBody = null;
      // verify the required parameter 'id' is set
      if (id === undefined || id === null) {
        throw new Error("Missing the required parameter 'id' when calling menuItemNutritionLabelImage");
      }

      let pathParams = {
        'id': id
      };
      let queryParams = {
        'showOptionalNutrients': opts['showOptionalNutrients'],
        'showZeroValues': opts['showZeroValues'],
        'showIngredients': opts['showIngredients']
      };
      let headerParams = {
      };
      let formParams = {
      };

      let authNames = ['apiKeyScheme'];
      let contentTypes = [];
      let accepts = ['image/png'];
      let returnType = Object;
      return this.apiClient.callApi(
        '/food/menuItems/{id}/nutritionLabel.png', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the menuItemNutritionLabelWidget operation.
     * @callback module:com.spoonacular.client/com.spoonacular/MenuItemsApi~menuItemNutritionLabelWidgetCallback
     * @param {String} error Error message, if any.
     * @param {String} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Menu Item Nutrition Label Widget
     * Visualize a menu item's nutritional label information as HTML including CSS.
     * @param {Number} id The menu item id.
     * @param {Object} opts Optional parameters
     * @param {Boolean} opts.defaultCss Whether the default CSS should be added to the response. (default to true)
     * @param {Boolean} opts.showOptionalNutrients Whether to show optional nutrients.
     * @param {Boolean} opts.showZeroValues Whether to show zero values.
     * @param {Boolean} opts.showIngredients Whether to show a list of ingredients.
     * @param {module:com.spoonacular.client/com.spoonacular/MenuItemsApi~menuItemNutritionLabelWidgetCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link String}
     */
    menuItemNutritionLabelWidget(id, opts, callback) {
      opts = opts || {};
      let postBody = null;
      // verify the required parameter 'id' is set
      if (id === undefined || id === null) {
        throw new Error("Missing the required parameter 'id' when calling menuItemNutritionLabelWidget");
      }

      let pathParams = {
        'id': id
      };
      let queryParams = {
        'defaultCss': opts['defaultCss'],
        'showOptionalNutrients': opts['showOptionalNutrients'],
        'showZeroValues': opts['showZeroValues'],
        'showIngredients': opts['showIngredients']
      };
      let headerParams = {
      };
      let formParams = {
      };

      let authNames = ['apiKeyScheme'];
      let contentTypes = [];
      let accepts = ['text/html'];
      let returnType = 'String';
      return this.apiClient.callApi(
        '/food/menuItems/{id}/nutritionLabel', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the searchMenuItems operation.
     * @callback module:com.spoonacular.client/com.spoonacular/MenuItemsApi~searchMenuItemsCallback
     * @param {String} error Error message, if any.
     * @param {module:com.spoonacular.client/com.spoonacular.client.model/InlineResponse20035} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Search Menu Items
     * Search over 115,000 menu items from over 800 fast food and chain restaurants. For example, McDonald's Big Mac or Starbucks Mocha.
     * @param {Object} opts Optional parameters
     * @param {String} opts.query The (natural language) search query.
     * @param {Number} opts.minCalories The minimum amount of calories the menu item must have.
     * @param {Number} opts.maxCalories The maximum amount of calories the menu item can have.
     * @param {Number} opts.minCarbs The minimum amount of carbohydrates in grams the menu item must have.
     * @param {Number} opts.maxCarbs The maximum amount of carbohydrates in grams the menu item can have.
     * @param {Number} opts.minProtein The minimum amount of protein in grams the menu item must have.
     * @param {Number} opts.maxProtein The maximum amount of protein in grams the menu item can have.
     * @param {Number} opts.minFat The minimum amount of fat in grams the menu item must have.
     * @param {Number} opts.maxFat The maximum amount of fat in grams the menu item can have.
     * @param {Number} opts.offset The number of results to skip (between 0 and 900).
     * @param {Number} opts._number The maximum number of items to return (between 1 and 100). Defaults to 10. (default to 10)
     * @param {module:com.spoonacular.client/com.spoonacular/MenuItemsApi~searchMenuItemsCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:com.spoonacular.client/com.spoonacular.client.model/InlineResponse20035}
     */
    searchMenuItems(opts, callback) {
      opts = opts || {};
      let postBody = null;

      let pathParams = {
      };
      let queryParams = {
        'query': opts['query'],
        'minCalories': opts['minCalories'],
        'maxCalories': opts['maxCalories'],
        'minCarbs': opts['minCarbs'],
        'maxCarbs': opts['maxCarbs'],
        'minProtein': opts['minProtein'],
        'maxProtein': opts['maxProtein'],
        'minFat': opts['minFat'],
        'maxFat': opts['maxFat'],
        'offset': opts['offset'],
        'number': opts['_number']
      };
      let headerParams = {
      };
      let formParams = {
      };

      let authNames = ['apiKeyScheme'];
      let contentTypes = [];
      let accepts = ['application/json'];
      let returnType = InlineResponse20035;
      return this.apiClient.callApi(
        '/food/menuItems/search', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the visualizeMenuItemNutritionByID operation.
     * @callback module:com.spoonacular.client/com.spoonacular/MenuItemsApi~visualizeMenuItemNutritionByIDCallback
     * @param {String} error Error message, if any.
     * @param {String} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Menu Item Nutrition by ID Widget
     * Visualize a menu item's nutritional information as HTML including CSS.
     * @param {Number} id The item's id.
     * @param {Object} opts Optional parameters
     * @param {Boolean} opts.defaultCss Whether the default CSS should be added to the response. (default to true)
     * @param {module:com.spoonacular.client/com.spoonacular.client.model/String} opts.accept Accept header.
     * @param {module:com.spoonacular.client/com.spoonacular/MenuItemsApi~visualizeMenuItemNutritionByIDCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link String}
     */
    visualizeMenuItemNutritionByID(id, opts, callback) {
      opts = opts || {};
      let postBody = null;
      // verify the required parameter 'id' is set
      if (id === undefined || id === null) {
        throw new Error("Missing the required parameter 'id' when calling visualizeMenuItemNutritionByID");
      }

      let pathParams = {
        'id': id
      };
      let queryParams = {
        'defaultCss': opts['defaultCss']
      };
      let headerParams = {
        'Accept': opts['accept']
      };
      let formParams = {
      };

      let authNames = ['apiKeyScheme'];
      let contentTypes = [];
      let accepts = ['text/html'];
      let returnType = 'String';
      return this.apiClient.callApi(
        '/food/menuItems/{id}/nutritionWidget', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }


}
