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
  class IngredientsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Autocomplete Ingredient Search
    # Autocomplete the entry of an ingredient.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :query The (natural language) search query.
    # @option opts [Integer] :number The maximum number of items to return (between 1 and 100). Defaults to 10. (default to 10)
    # @option opts [Boolean] :meta_information Whether to return more meta information about the ingredients.
    # @option opts [String] :intolerances A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered. See a full list of supported intolerances.
    # @option opts [String] :language The language of the input. Either &#39;en&#39; or &#39;de&#39;.
    # @return [Array<AutocompleteIngredientSearch200ResponseInner>]
    def autocomplete_ingredient_search(opts = {})
      data, _status_code, _headers = autocomplete_ingredient_search_with_http_info(opts)
      data
    end

    # Autocomplete Ingredient Search
    # Autocomplete the entry of an ingredient.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :query The (natural language) search query.
    # @option opts [Integer] :number The maximum number of items to return (between 1 and 100). Defaults to 10. (default to 10)
    # @option opts [Boolean] :meta_information Whether to return more meta information about the ingredients.
    # @option opts [String] :intolerances A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered. See a full list of supported intolerances.
    # @option opts [String] :language The language of the input. Either &#39;en&#39; or &#39;de&#39;.
    # @return [Array<(Array<AutocompleteIngredientSearch200ResponseInner>, Integer, Hash)>] Array<AutocompleteIngredientSearch200ResponseInner> data, response status code and response headers
    def autocomplete_ingredient_search_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IngredientsApi.autocomplete_ingredient_search ...'
      end
      if @api_client.config.client_side_validation && !opts[:'number'].nil? && opts[:'number'] > 100
        fail ArgumentError, 'invalid value for "opts[:"number"]" when calling IngredientsApi.autocomplete_ingredient_search, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'number'].nil? && opts[:'number'] < 1
        fail ArgumentError, 'invalid value for "opts[:"number"]" when calling IngredientsApi.autocomplete_ingredient_search, must be greater than or equal to 1.'
      end

      allowable_values = ["en", "de"]
      if @api_client.config.client_side_validation && opts[:'language'] && !allowable_values.include?(opts[:'language'])
        fail ArgumentError, "invalid value for \"language\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/food/ingredients/autocomplete'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'query'] = opts[:'query'] if !opts[:'query'].nil?
      query_params[:'number'] = opts[:'number'] if !opts[:'number'].nil?
      query_params[:'metaInformation'] = opts[:'meta_information'] if !opts[:'meta_information'].nil?
      query_params[:'intolerances'] = opts[:'intolerances'] if !opts[:'intolerances'].nil?
      query_params[:'language'] = opts[:'language'] if !opts[:'language'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Array<AutocompleteIngredientSearch200ResponseInner>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyScheme']

      new_options = opts.merge(
        :operation => :"IngredientsApi.autocomplete_ingredient_search",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IngredientsApi#autocomplete_ingredient_search\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Compute Ingredient Amount
    # Compute the amount you need of a certain ingredient for a certain nutritional goal. For example, how much pineapple do you have to eat to get 10 grams of protein?
    # @param id [Float] The id of the ingredient you want the amount for.
    # @param nutrient [String] The target nutrient. See a list of supported nutrients.
    # @param target [Float] The target number of the given nutrient.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :unit The target unit.
    # @return [ComputeIngredientAmount200Response]
    def compute_ingredient_amount(id, nutrient, target, opts = {})
      data, _status_code, _headers = compute_ingredient_amount_with_http_info(id, nutrient, target, opts)
      data
    end

    # Compute Ingredient Amount
    # Compute the amount you need of a certain ingredient for a certain nutritional goal. For example, how much pineapple do you have to eat to get 10 grams of protein?
    # @param id [Float] The id of the ingredient you want the amount for.
    # @param nutrient [String] The target nutrient. See a list of supported nutrients.
    # @param target [Float] The target number of the given nutrient.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :unit The target unit.
    # @return [Array<(ComputeIngredientAmount200Response, Integer, Hash)>] ComputeIngredientAmount200Response data, response status code and response headers
    def compute_ingredient_amount_with_http_info(id, nutrient, target, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IngredientsApi.compute_ingredient_amount ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling IngredientsApi.compute_ingredient_amount"
      end
      # verify the required parameter 'nutrient' is set
      if @api_client.config.client_side_validation && nutrient.nil?
        fail ArgumentError, "Missing the required parameter 'nutrient' when calling IngredientsApi.compute_ingredient_amount"
      end
      # verify the required parameter 'target' is set
      if @api_client.config.client_side_validation && target.nil?
        fail ArgumentError, "Missing the required parameter 'target' when calling IngredientsApi.compute_ingredient_amount"
      end
      # resource path
      local_var_path = '/food/ingredients/{id}/amount'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'nutrient'] = nutrient
      query_params[:'target'] = target
      query_params[:'unit'] = opts[:'unit'] if !opts[:'unit'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ComputeIngredientAmount200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyScheme']

      new_options = opts.merge(
        :operation => :"IngredientsApi.compute_ingredient_amount",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IngredientsApi#compute_ingredient_amount\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Ingredient Information
    # Use an ingredient id to get all available information about an ingredient, such as its image and supermarket aisle.
    # @param id [Integer] The item&#39;s id.
    # @param [Hash] opts the optional parameters
    # @option opts [Float] :amount The amount of this ingredient.
    # @option opts [String] :unit The unit for the given amount.
    # @return [GetIngredientInformation200Response]
    def get_ingredient_information(id, opts = {})
      data, _status_code, _headers = get_ingredient_information_with_http_info(id, opts)
      data
    end

    # Get Ingredient Information
    # Use an ingredient id to get all available information about an ingredient, such as its image and supermarket aisle.
    # @param id [Integer] The item&#39;s id.
    # @param [Hash] opts the optional parameters
    # @option opts [Float] :amount The amount of this ingredient.
    # @option opts [String] :unit The unit for the given amount.
    # @return [Array<(GetIngredientInformation200Response, Integer, Hash)>] GetIngredientInformation200Response data, response status code and response headers
    def get_ingredient_information_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IngredientsApi.get_ingredient_information ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling IngredientsApi.get_ingredient_information"
      end
      # resource path
      local_var_path = '/food/ingredients/{id}/information'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'amount'] = opts[:'amount'] if !opts[:'amount'].nil?
      query_params[:'unit'] = opts[:'unit'] if !opts[:'unit'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'GetIngredientInformation200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyScheme']

      new_options = opts.merge(
        :operation => :"IngredientsApi.get_ingredient_information",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IngredientsApi#get_ingredient_information\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Ingredient Substitutes
    # Search for substitutes for a given ingredient.
    # @param ingredient_name [String] The name of the ingredient you want to replace.
    # @param [Hash] opts the optional parameters
    # @return [GetIngredientSubstitutes200Response]
    def get_ingredient_substitutes(ingredient_name, opts = {})
      data, _status_code, _headers = get_ingredient_substitutes_with_http_info(ingredient_name, opts)
      data
    end

    # Get Ingredient Substitutes
    # Search for substitutes for a given ingredient.
    # @param ingredient_name [String] The name of the ingredient you want to replace.
    # @param [Hash] opts the optional parameters
    # @return [Array<(GetIngredientSubstitutes200Response, Integer, Hash)>] GetIngredientSubstitutes200Response data, response status code and response headers
    def get_ingredient_substitutes_with_http_info(ingredient_name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IngredientsApi.get_ingredient_substitutes ...'
      end
      # verify the required parameter 'ingredient_name' is set
      if @api_client.config.client_side_validation && ingredient_name.nil?
        fail ArgumentError, "Missing the required parameter 'ingredient_name' when calling IngredientsApi.get_ingredient_substitutes"
      end
      # resource path
      local_var_path = '/food/ingredients/substitutes'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'ingredientName'] = ingredient_name

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'GetIngredientSubstitutes200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyScheme']

      new_options = opts.merge(
        :operation => :"IngredientsApi.get_ingredient_substitutes",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IngredientsApi#get_ingredient_substitutes\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Ingredient Substitutes by ID
    # Search for substitutes for a given ingredient.
    # @param id [Integer] The item&#39;s id.
    # @param [Hash] opts the optional parameters
    # @return [GetIngredientSubstitutes200Response]
    def get_ingredient_substitutes_by_id(id, opts = {})
      data, _status_code, _headers = get_ingredient_substitutes_by_id_with_http_info(id, opts)
      data
    end

    # Get Ingredient Substitutes by ID
    # Search for substitutes for a given ingredient.
    # @param id [Integer] The item&#39;s id.
    # @param [Hash] opts the optional parameters
    # @return [Array<(GetIngredientSubstitutes200Response, Integer, Hash)>] GetIngredientSubstitutes200Response data, response status code and response headers
    def get_ingredient_substitutes_by_id_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IngredientsApi.get_ingredient_substitutes_by_id ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling IngredientsApi.get_ingredient_substitutes_by_id"
      end
      # resource path
      local_var_path = '/food/ingredients/{id}/substitutes'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:debug_return_type] || 'GetIngredientSubstitutes200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyScheme']

      new_options = opts.merge(
        :operation => :"IngredientsApi.get_ingredient_substitutes_by_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IngredientsApi#get_ingredient_substitutes_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Ingredient Search
    # Search for simple whole foods (e.g. fruits, vegetables, nuts, grains, meat, fish, dairy etc.).
    # @param [Hash] opts the optional parameters
    # @option opts [String] :query The (natural language) search query.
    # @option opts [Boolean] :add_children Whether to add children of found foods.
    # @option opts [Float] :min_protein_percent The minimum percentage of protein the food must have (between 0 and 100).
    # @option opts [Float] :max_protein_percent The maximum percentage of protein the food can have (between 0 and 100).
    # @option opts [Float] :min_fat_percent The minimum percentage of fat the food must have (between 0 and 100).
    # @option opts [Float] :max_fat_percent The maximum percentage of fat the food can have (between 0 and 100).
    # @option opts [Float] :min_carbs_percent The minimum percentage of carbs the food must have (between 0 and 100).
    # @option opts [Float] :max_carbs_percent The maximum percentage of carbs the food can have (between 0 and 100).
    # @option opts [Boolean] :meta_information Whether to return more meta information about the ingredients.
    # @option opts [String] :intolerances A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered. See a full list of supported intolerances.
    # @option opts [String] :sort The strategy to sort recipes by. See a full list of supported sorting options.
    # @option opts [String] :sort_direction The direction in which to sort. Must be either &#39;asc&#39; (ascending) or &#39;desc&#39; (descending).
    # @option opts [Integer] :offset The number of results to skip (between 0 and 900).
    # @option opts [Integer] :number The maximum number of items to return (between 1 and 100). Defaults to 10. (default to 10)
    # @option opts [String] :language The language of the input. Either &#39;en&#39; or &#39;de&#39;.
    # @return [IngredientSearch200Response]
    def ingredient_search(opts = {})
      data, _status_code, _headers = ingredient_search_with_http_info(opts)
      data
    end

    # Ingredient Search
    # Search for simple whole foods (e.g. fruits, vegetables, nuts, grains, meat, fish, dairy etc.).
    # @param [Hash] opts the optional parameters
    # @option opts [String] :query The (natural language) search query.
    # @option opts [Boolean] :add_children Whether to add children of found foods.
    # @option opts [Float] :min_protein_percent The minimum percentage of protein the food must have (between 0 and 100).
    # @option opts [Float] :max_protein_percent The maximum percentage of protein the food can have (between 0 and 100).
    # @option opts [Float] :min_fat_percent The minimum percentage of fat the food must have (between 0 and 100).
    # @option opts [Float] :max_fat_percent The maximum percentage of fat the food can have (between 0 and 100).
    # @option opts [Float] :min_carbs_percent The minimum percentage of carbs the food must have (between 0 and 100).
    # @option opts [Float] :max_carbs_percent The maximum percentage of carbs the food can have (between 0 and 100).
    # @option opts [Boolean] :meta_information Whether to return more meta information about the ingredients.
    # @option opts [String] :intolerances A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered. See a full list of supported intolerances.
    # @option opts [String] :sort The strategy to sort recipes by. See a full list of supported sorting options.
    # @option opts [String] :sort_direction The direction in which to sort. Must be either &#39;asc&#39; (ascending) or &#39;desc&#39; (descending).
    # @option opts [Integer] :offset The number of results to skip (between 0 and 900).
    # @option opts [Integer] :number The maximum number of items to return (between 1 and 100). Defaults to 10. (default to 10)
    # @option opts [String] :language The language of the input. Either &#39;en&#39; or &#39;de&#39;.
    # @return [Array<(IngredientSearch200Response, Integer, Hash)>] IngredientSearch200Response data, response status code and response headers
    def ingredient_search_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IngredientsApi.ingredient_search ...'
      end
      if @api_client.config.client_side_validation && !opts[:'offset'].nil? && opts[:'offset'] > 900
        fail ArgumentError, 'invalid value for "opts[:"offset"]" when calling IngredientsApi.ingredient_search, must be smaller than or equal to 900.'
      end

      if @api_client.config.client_side_validation && !opts[:'offset'].nil? && opts[:'offset'] < 0
        fail ArgumentError, 'invalid value for "opts[:"offset"]" when calling IngredientsApi.ingredient_search, must be greater than or equal to 0.'
      end

      if @api_client.config.client_side_validation && !opts[:'number'].nil? && opts[:'number'] > 100
        fail ArgumentError, 'invalid value for "opts[:"number"]" when calling IngredientsApi.ingredient_search, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'number'].nil? && opts[:'number'] < 1
        fail ArgumentError, 'invalid value for "opts[:"number"]" when calling IngredientsApi.ingredient_search, must be greater than or equal to 1.'
      end

      allowable_values = ["en", "de"]
      if @api_client.config.client_side_validation && opts[:'language'] && !allowable_values.include?(opts[:'language'])
        fail ArgumentError, "invalid value for \"language\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/food/ingredients/search'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'query'] = opts[:'query'] if !opts[:'query'].nil?
      query_params[:'addChildren'] = opts[:'add_children'] if !opts[:'add_children'].nil?
      query_params[:'minProteinPercent'] = opts[:'min_protein_percent'] if !opts[:'min_protein_percent'].nil?
      query_params[:'maxProteinPercent'] = opts[:'max_protein_percent'] if !opts[:'max_protein_percent'].nil?
      query_params[:'minFatPercent'] = opts[:'min_fat_percent'] if !opts[:'min_fat_percent'].nil?
      query_params[:'maxFatPercent'] = opts[:'max_fat_percent'] if !opts[:'max_fat_percent'].nil?
      query_params[:'minCarbsPercent'] = opts[:'min_carbs_percent'] if !opts[:'min_carbs_percent'].nil?
      query_params[:'maxCarbsPercent'] = opts[:'max_carbs_percent'] if !opts[:'max_carbs_percent'].nil?
      query_params[:'metaInformation'] = opts[:'meta_information'] if !opts[:'meta_information'].nil?
      query_params[:'intolerances'] = opts[:'intolerances'] if !opts[:'intolerances'].nil?
      query_params[:'sort'] = opts[:'sort'] if !opts[:'sort'].nil?
      query_params[:'sortDirection'] = opts[:'sort_direction'] if !opts[:'sort_direction'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'number'] = opts[:'number'] if !opts[:'number'].nil?
      query_params[:'language'] = opts[:'language'] if !opts[:'language'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'IngredientSearch200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyScheme']

      new_options = opts.merge(
        :operation => :"IngredientsApi.ingredient_search",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IngredientsApi#ingredient_search\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Ingredients by ID Image
    # Visualize a recipe's ingredient list.
    # @param id [Float] The recipe id.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :measure Whether the the measures should be &#39;us&#39; or &#39;metric&#39;.
    # @return [File]
    def ingredients_by_id_image(id, opts = {})
      data, _status_code, _headers = ingredients_by_id_image_with_http_info(id, opts)
      data
    end

    # Ingredients by ID Image
    # Visualize a recipe&#39;s ingredient list.
    # @param id [Float] The recipe id.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :measure Whether the the measures should be &#39;us&#39; or &#39;metric&#39;.
    # @return [Array<(File, Integer, Hash)>] File data, response status code and response headers
    def ingredients_by_id_image_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IngredientsApi.ingredients_by_id_image ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling IngredientsApi.ingredients_by_id_image"
      end
      allowable_values = ["us", "metric"]
      if @api_client.config.client_side_validation && opts[:'measure'] && !allowable_values.include?(opts[:'measure'])
        fail ArgumentError, "invalid value for \"measure\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/recipes/{id}/ingredientWidget.png'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'measure'] = opts[:'measure'] if !opts[:'measure'].nil?

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
        :operation => :"IngredientsApi.ingredients_by_id_image",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IngredientsApi#ingredients_by_id_image\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Map Ingredients to Grocery Products
    # Map a set of ingredients to products you can buy in the grocery store.
    # @param map_ingredients_to_grocery_products_request [MapIngredientsToGroceryProductsRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<MapIngredientsToGroceryProducts200ResponseInner>]
    def map_ingredients_to_grocery_products(map_ingredients_to_grocery_products_request, opts = {})
      data, _status_code, _headers = map_ingredients_to_grocery_products_with_http_info(map_ingredients_to_grocery_products_request, opts)
      data
    end

    # Map Ingredients to Grocery Products
    # Map a set of ingredients to products you can buy in the grocery store.
    # @param map_ingredients_to_grocery_products_request [MapIngredientsToGroceryProductsRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<MapIngredientsToGroceryProducts200ResponseInner>, Integer, Hash)>] Array<MapIngredientsToGroceryProducts200ResponseInner> data, response status code and response headers
    def map_ingredients_to_grocery_products_with_http_info(map_ingredients_to_grocery_products_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IngredientsApi.map_ingredients_to_grocery_products ...'
      end
      # verify the required parameter 'map_ingredients_to_grocery_products_request' is set
      if @api_client.config.client_side_validation && map_ingredients_to_grocery_products_request.nil?
        fail ArgumentError, "Missing the required parameter 'map_ingredients_to_grocery_products_request' when calling IngredientsApi.map_ingredients_to_grocery_products"
      end
      # resource path
      local_var_path = '/food/ingredients/map'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(map_ingredients_to_grocery_products_request)

      # return_type
      return_type = opts[:debug_return_type] || 'Array<MapIngredientsToGroceryProducts200ResponseInner>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyScheme']

      new_options = opts.merge(
        :operation => :"IngredientsApi.map_ingredients_to_grocery_products",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IngredientsApi#map_ingredients_to_grocery_products\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Ingredients Widget
    # Visualize ingredients of a recipe. You can play around with that endpoint!
    # @param ingredient_list [String] The ingredient list of the recipe, one ingredient per line (separate lines with \\\\n).
    # @param servings [Float] The number of servings.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :language The language of the input. Either &#39;en&#39; or &#39;de&#39;.
    # @option opts [String] :measure The original system of measurement, either &#39;metric&#39; or &#39;us&#39;.
    # @option opts [String] :view How to visualize the ingredients, either &#39;grid&#39; or &#39;list&#39;.
    # @option opts [Boolean] :default_css Whether the default CSS should be added to the response.
    # @option opts [Boolean] :show_backlink Whether to show a backlink to spoonacular. If set false, this call counts against your quota.
    # @return [String]
    def visualize_ingredients(ingredient_list, servings, opts = {})
      data, _status_code, _headers = visualize_ingredients_with_http_info(ingredient_list, servings, opts)
      data
    end

    # Ingredients Widget
    # Visualize ingredients of a recipe. You can play around with that endpoint!
    # @param ingredient_list [String] The ingredient list of the recipe, one ingredient per line (separate lines with \\\\n).
    # @param servings [Float] The number of servings.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :language The language of the input. Either &#39;en&#39; or &#39;de&#39;.
    # @option opts [String] :measure The original system of measurement, either &#39;metric&#39; or &#39;us&#39;.
    # @option opts [String] :view How to visualize the ingredients, either &#39;grid&#39; or &#39;list&#39;.
    # @option opts [Boolean] :default_css Whether the default CSS should be added to the response.
    # @option opts [Boolean] :show_backlink Whether to show a backlink to spoonacular. If set false, this call counts against your quota.
    # @return [Array<(String, Integer, Hash)>] String data, response status code and response headers
    def visualize_ingredients_with_http_info(ingredient_list, servings, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IngredientsApi.visualize_ingredients ...'
      end
      # verify the required parameter 'ingredient_list' is set
      if @api_client.config.client_side_validation && ingredient_list.nil?
        fail ArgumentError, "Missing the required parameter 'ingredient_list' when calling IngredientsApi.visualize_ingredients"
      end
      # verify the required parameter 'servings' is set
      if @api_client.config.client_side_validation && servings.nil?
        fail ArgumentError, "Missing the required parameter 'servings' when calling IngredientsApi.visualize_ingredients"
      end
      allowable_values = ["en", "de"]
      if @api_client.config.client_side_validation && opts[:'language'] && !allowable_values.include?(opts[:'language'])
        fail ArgumentError, "invalid value for \"language\", must be one of #{allowable_values}"
      end
      allowable_values = ["us", "metric"]
      if @api_client.config.client_side_validation && opts[:'measure'] && !allowable_values.include?(opts[:'measure'])
        fail ArgumentError, "invalid value for \"measure\", must be one of #{allowable_values}"
      end
      allowable_values = ["grid", "list"]
      if @api_client.config.client_side_validation && opts[:'view'] && !allowable_values.include?(opts[:'view'])
        fail ArgumentError, "invalid value for \"view\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/recipes/visualizeIngredients'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'language'] = opts[:'language'] if !opts[:'language'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['text/html'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/x-www-form-urlencoded'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}
      form_params['ingredientList'] = ingredient_list
      form_params['servings'] = servings
      form_params['measure'] = opts[:'measure'] if !opts[:'measure'].nil?
      form_params['view'] = opts[:'view'] if !opts[:'view'].nil?
      form_params['defaultCss'] = opts[:'default_css'] if !opts[:'default_css'].nil?
      form_params['showBacklink'] = opts[:'show_backlink'] if !opts[:'show_backlink'].nil?

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'String'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyScheme']

      new_options = opts.merge(
        :operation => :"IngredientsApi.visualize_ingredients",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IngredientsApi#visualize_ingredients\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
