=begin
#spoonacular API

#The spoonacular Nutrition, Recipe, and Food API allows you to access over thousands of recipes, thousands of ingredients, 800,000 food products, over 100,000 menu items, and restaurants. Our food ontology and semantic recipe search engine makes it possible to search for recipes using natural language queries, such as \"gluten free brownies without sugar\" or \"low fat vegan cupcakes.\" You can automatically calculate the nutritional information for any recipe, analyze recipe costs, visualize ingredient lists, find recipes for what's in your fridge, find recipes based on special diets, nutritional requirements, or favorite ingredients, classify recipes into types and cuisines, convert ingredient amounts, or even compute an entire meal plan. With our powerful API, you can create many kinds of food and especially nutrition apps.  Special diets/dietary requirements currently available include: vegan, vegetarian, pescetarian, gluten free, grain free, dairy free, high protein, whole 30, low sodium, low carb, Paleo, ketogenic, FODMAP, and Primal.

The version of the OpenAPI document: 1.1
Contact: mail@spoonacular.com
Generated by: https://openapi-generator.tech
Generator version: 7.7.0-SNAPSHOT

=end

require 'cgi'

module OpenapiClient
  class MenuItemsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Autocomplete Menu Item Search
    # Generate suggestions for menu items based on a (partial) query. The matches will be found by looking in the title only.
    # @param query [String] The (partial) search query.
    # @param [Hash] opts the optional parameters
    # @option opts [Float] :number The number of results to return (between 1 and 25).
    # @return [AutocompleteMenuItemSearch200Response]
    def autocomplete_menu_item_search(query, opts = {})
      data, _status_code, _headers = autocomplete_menu_item_search_with_http_info(query, opts)
      data
    end

    # Autocomplete Menu Item Search
    # Generate suggestions for menu items based on a (partial) query. The matches will be found by looking in the title only.
    # @param query [String] The (partial) search query.
    # @param [Hash] opts the optional parameters
    # @option opts [Float] :number The number of results to return (between 1 and 25).
    # @return [Array<(AutocompleteMenuItemSearch200Response, Integer, Hash)>] AutocompleteMenuItemSearch200Response data, response status code and response headers
    def autocomplete_menu_item_search_with_http_info(query, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MenuItemsApi.autocomplete_menu_item_search ...'
      end
      # verify the required parameter 'query' is set
      if @api_client.config.client_side_validation && query.nil?
        fail ArgumentError, "Missing the required parameter 'query' when calling MenuItemsApi.autocomplete_menu_item_search"
      end
      if @api_client.config.client_side_validation && !opts[:'number'].nil? && opts[:'number'] > 25
        fail ArgumentError, 'invalid value for "opts[:"number"]" when calling MenuItemsApi.autocomplete_menu_item_search, must be smaller than or equal to 25.'
      end

      if @api_client.config.client_side_validation && !opts[:'number'].nil? && opts[:'number'] < 1
        fail ArgumentError, 'invalid value for "opts[:"number"]" when calling MenuItemsApi.autocomplete_menu_item_search, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/food/menuItems/suggest'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'query'] = query
      query_params[:'number'] = opts[:'number'] if !opts[:'number'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'AutocompleteMenuItemSearch200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyScheme']

      new_options = opts.merge(
        :operation => :"MenuItemsApi.autocomplete_menu_item_search",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MenuItemsApi#autocomplete_menu_item_search\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Menu Item Information
    # Use a menu item id to get all available information about a menu item, such as nutrition.
    # @param id [Integer] The item&#39;s id.
    # @param [Hash] opts the optional parameters
    # @return [GetMenuItemInformation200Response]
    def get_menu_item_information(id, opts = {})
      data, _status_code, _headers = get_menu_item_information_with_http_info(id, opts)
      data
    end

    # Get Menu Item Information
    # Use a menu item id to get all available information about a menu item, such as nutrition.
    # @param id [Integer] The item&#39;s id.
    # @param [Hash] opts the optional parameters
    # @return [Array<(GetMenuItemInformation200Response, Integer, Hash)>] GetMenuItemInformation200Response data, response status code and response headers
    def get_menu_item_information_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MenuItemsApi.get_menu_item_information ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling MenuItemsApi.get_menu_item_information"
      end
      # resource path
      local_var_path = '/food/menuItems/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'GetMenuItemInformation200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyScheme']

      new_options = opts.merge(
        :operation => :"MenuItemsApi.get_menu_item_information",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MenuItemsApi#get_menu_item_information\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Menu Item Nutrition by ID Image
    # Visualize a menu item's nutritional information as HTML including CSS.
    # @param id [Float] The menu item id.
    # @param [Hash] opts the optional parameters
    # @return [File]
    def menu_item_nutrition_by_id_image(id, opts = {})
      data, _status_code, _headers = menu_item_nutrition_by_id_image_with_http_info(id, opts)
      data
    end

    # Menu Item Nutrition by ID Image
    # Visualize a menu item&#39;s nutritional information as HTML including CSS.
    # @param id [Float] The menu item id.
    # @param [Hash] opts the optional parameters
    # @return [Array<(File, Integer, Hash)>] File data, response status code and response headers
    def menu_item_nutrition_by_id_image_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MenuItemsApi.menu_item_nutrition_by_id_image ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling MenuItemsApi.menu_item_nutrition_by_id_image"
      end
      # resource path
      local_var_path = '/food/menuItems/{id}/nutritionWidget.png'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['image/png'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'File'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyScheme']

      new_options = opts.merge(
        :operation => :"MenuItemsApi.menu_item_nutrition_by_id_image",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MenuItemsApi#menu_item_nutrition_by_id_image\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Menu Item Nutrition Label Image
    # Visualize a menu item's nutritional label information as an image.
    # @param id [Float] The menu item id.
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :show_optional_nutrients Whether to show optional nutrients.
    # @option opts [Boolean] :show_zero_values Whether to show zero values.
    # @option opts [Boolean] :show_ingredients Whether to show a list of ingredients.
    # @return [File]
    def menu_item_nutrition_label_image(id, opts = {})
      data, _status_code, _headers = menu_item_nutrition_label_image_with_http_info(id, opts)
      data
    end

    # Menu Item Nutrition Label Image
    # Visualize a menu item&#39;s nutritional label information as an image.
    # @param id [Float] The menu item id.
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :show_optional_nutrients Whether to show optional nutrients.
    # @option opts [Boolean] :show_zero_values Whether to show zero values.
    # @option opts [Boolean] :show_ingredients Whether to show a list of ingredients.
    # @return [Array<(File, Integer, Hash)>] File data, response status code and response headers
    def menu_item_nutrition_label_image_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MenuItemsApi.menu_item_nutrition_label_image ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling MenuItemsApi.menu_item_nutrition_label_image"
      end
      # resource path
      local_var_path = '/food/menuItems/{id}/nutritionLabel.png'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'showOptionalNutrients'] = opts[:'show_optional_nutrients'] if !opts[:'show_optional_nutrients'].nil?
      query_params[:'showZeroValues'] = opts[:'show_zero_values'] if !opts[:'show_zero_values'].nil?
      query_params[:'showIngredients'] = opts[:'show_ingredients'] if !opts[:'show_ingredients'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['image/png'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'File'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyScheme']

      new_options = opts.merge(
        :operation => :"MenuItemsApi.menu_item_nutrition_label_image",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MenuItemsApi#menu_item_nutrition_label_image\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Menu Item Nutrition Label Widget
    # Visualize a menu item's nutritional label information as HTML including CSS.
    # @param id [Float] The menu item id.
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :default_css Whether the default CSS should be added to the response. (default to true)
    # @option opts [Boolean] :show_optional_nutrients Whether to show optional nutrients.
    # @option opts [Boolean] :show_zero_values Whether to show zero values.
    # @option opts [Boolean] :show_ingredients Whether to show a list of ingredients.
    # @return [String]
    def menu_item_nutrition_label_widget(id, opts = {})
      data, _status_code, _headers = menu_item_nutrition_label_widget_with_http_info(id, opts)
      data
    end

    # Menu Item Nutrition Label Widget
    # Visualize a menu item&#39;s nutritional label information as HTML including CSS.
    # @param id [Float] The menu item id.
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :default_css Whether the default CSS should be added to the response. (default to true)
    # @option opts [Boolean] :show_optional_nutrients Whether to show optional nutrients.
    # @option opts [Boolean] :show_zero_values Whether to show zero values.
    # @option opts [Boolean] :show_ingredients Whether to show a list of ingredients.
    # @return [Array<(String, Integer, Hash)>] String data, response status code and response headers
    def menu_item_nutrition_label_widget_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MenuItemsApi.menu_item_nutrition_label_widget ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling MenuItemsApi.menu_item_nutrition_label_widget"
      end
      # resource path
      local_var_path = '/food/menuItems/{id}/nutritionLabel'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'defaultCss'] = opts[:'default_css'] if !opts[:'default_css'].nil?
      query_params[:'showOptionalNutrients'] = opts[:'show_optional_nutrients'] if !opts[:'show_optional_nutrients'].nil?
      query_params[:'showZeroValues'] = opts[:'show_zero_values'] if !opts[:'show_zero_values'].nil?
      query_params[:'showIngredients'] = opts[:'show_ingredients'] if !opts[:'show_ingredients'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['text/html'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'String'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyScheme']

      new_options = opts.merge(
        :operation => :"MenuItemsApi.menu_item_nutrition_label_widget",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MenuItemsApi#menu_item_nutrition_label_widget\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Search Menu Items
    # Search over 115,000 menu items from over 800 fast food and chain restaurants. For example, McDonald's Big Mac or Starbucks Mocha.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :query The (natural language) search query.
    # @option opts [Float] :min_calories The minimum amount of calories the menu item must have.
    # @option opts [Float] :max_calories The maximum amount of calories the menu item can have.
    # @option opts [Float] :min_carbs The minimum amount of carbohydrates in grams the menu item must have.
    # @option opts [Float] :max_carbs The maximum amount of carbohydrates in grams the menu item can have.
    # @option opts [Float] :min_protein The minimum amount of protein in grams the menu item must have.
    # @option opts [Float] :max_protein The maximum amount of protein in grams the menu item can have.
    # @option opts [Float] :min_fat The minimum amount of fat in grams the menu item must have.
    # @option opts [Float] :max_fat The maximum amount of fat in grams the menu item can have.
    # @option opts [Boolean] :add_menu_item_information If set to true, you get more information about the menu items returned.
    # @option opts [Integer] :offset The number of results to skip (between 0 and 900).
    # @option opts [Integer] :number The maximum number of items to return (between 1 and 100). Defaults to 10. (default to 10)
    # @return [SearchMenuItems200Response]
    def search_menu_items(opts = {})
      data, _status_code, _headers = search_menu_items_with_http_info(opts)
      data
    end

    # Search Menu Items
    # Search over 115,000 menu items from over 800 fast food and chain restaurants. For example, McDonald&#39;s Big Mac or Starbucks Mocha.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :query The (natural language) search query.
    # @option opts [Float] :min_calories The minimum amount of calories the menu item must have.
    # @option opts [Float] :max_calories The maximum amount of calories the menu item can have.
    # @option opts [Float] :min_carbs The minimum amount of carbohydrates in grams the menu item must have.
    # @option opts [Float] :max_carbs The maximum amount of carbohydrates in grams the menu item can have.
    # @option opts [Float] :min_protein The minimum amount of protein in grams the menu item must have.
    # @option opts [Float] :max_protein The maximum amount of protein in grams the menu item can have.
    # @option opts [Float] :min_fat The minimum amount of fat in grams the menu item must have.
    # @option opts [Float] :max_fat The maximum amount of fat in grams the menu item can have.
    # @option opts [Boolean] :add_menu_item_information If set to true, you get more information about the menu items returned.
    # @option opts [Integer] :offset The number of results to skip (between 0 and 900).
    # @option opts [Integer] :number The maximum number of items to return (between 1 and 100). Defaults to 10. (default to 10)
    # @return [Array<(SearchMenuItems200Response, Integer, Hash)>] SearchMenuItems200Response data, response status code and response headers
    def search_menu_items_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MenuItemsApi.search_menu_items ...'
      end
      if @api_client.config.client_side_validation && !opts[:'offset'].nil? && opts[:'offset'] > 900
        fail ArgumentError, 'invalid value for "opts[:"offset"]" when calling MenuItemsApi.search_menu_items, must be smaller than or equal to 900.'
      end

      if @api_client.config.client_side_validation && !opts[:'offset'].nil? && opts[:'offset'] < 0
        fail ArgumentError, 'invalid value for "opts[:"offset"]" when calling MenuItemsApi.search_menu_items, must be greater than or equal to 0.'
      end

      if @api_client.config.client_side_validation && !opts[:'number'].nil? && opts[:'number'] > 100
        fail ArgumentError, 'invalid value for "opts[:"number"]" when calling MenuItemsApi.search_menu_items, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'number'].nil? && opts[:'number'] < 1
        fail ArgumentError, 'invalid value for "opts[:"number"]" when calling MenuItemsApi.search_menu_items, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/food/menuItems/search'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'query'] = opts[:'query'] if !opts[:'query'].nil?
      query_params[:'minCalories'] = opts[:'min_calories'] if !opts[:'min_calories'].nil?
      query_params[:'maxCalories'] = opts[:'max_calories'] if !opts[:'max_calories'].nil?
      query_params[:'minCarbs'] = opts[:'min_carbs'] if !opts[:'min_carbs'].nil?
      query_params[:'maxCarbs'] = opts[:'max_carbs'] if !opts[:'max_carbs'].nil?
      query_params[:'minProtein'] = opts[:'min_protein'] if !opts[:'min_protein'].nil?
      query_params[:'maxProtein'] = opts[:'max_protein'] if !opts[:'max_protein'].nil?
      query_params[:'minFat'] = opts[:'min_fat'] if !opts[:'min_fat'].nil?
      query_params[:'maxFat'] = opts[:'max_fat'] if !opts[:'max_fat'].nil?
      query_params[:'addMenuItemInformation'] = opts[:'add_menu_item_information'] if !opts[:'add_menu_item_information'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'number'] = opts[:'number'] if !opts[:'number'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'SearchMenuItems200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyScheme']

      new_options = opts.merge(
        :operation => :"MenuItemsApi.search_menu_items",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MenuItemsApi#search_menu_items\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Menu Item Nutrition by ID Widget
    # Visualize a menu item's nutritional information as HTML including CSS.
    # @param id [Integer] The item&#39;s id.
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :default_css Whether the default CSS should be added to the response. (default to true)
    # @return [String]
    def visualize_menu_item_nutrition_by_id(id, opts = {})
      data, _status_code, _headers = visualize_menu_item_nutrition_by_id_with_http_info(id, opts)
      data
    end

    # Menu Item Nutrition by ID Widget
    # Visualize a menu item&#39;s nutritional information as HTML including CSS.
    # @param id [Integer] The item&#39;s id.
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :default_css Whether the default CSS should be added to the response. (default to true)
    # @return [Array<(String, Integer, Hash)>] String data, response status code and response headers
    def visualize_menu_item_nutrition_by_id_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MenuItemsApi.visualize_menu_item_nutrition_by_id ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling MenuItemsApi.visualize_menu_item_nutrition_by_id"
      end
      # resource path
      local_var_path = '/food/menuItems/{id}/nutritionWidget'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'defaultCss'] = opts[:'default_css'] if !opts[:'default_css'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['text/html'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'String'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyScheme']

      new_options = opts.merge(
        :operation => :"MenuItemsApi.visualize_menu_item_nutrition_by_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MenuItemsApi#visualize_menu_item_nutrition_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
