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
  class MiscApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Detect Food in Text
    # Take any text and find all mentions of food contained within it. This task is also called Named Entity Recognition (NER). In this case, the entities are foods. Either dishes, such as pizza or cheeseburger, or ingredients, such as cucumber or almonds.
    # @param text [String] 
    # @param [Hash] opts the optional parameters
    # @return [DetectFoodInText200Response]
    def detect_food_in_text(text, opts = {})
      data, _status_code, _headers = detect_food_in_text_with_http_info(text, opts)
      data
    end

    # Detect Food in Text
    # Take any text and find all mentions of food contained within it. This task is also called Named Entity Recognition (NER). In this case, the entities are foods. Either dishes, such as pizza or cheeseburger, or ingredients, such as cucumber or almonds.
    # @param text [String] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(DetectFoodInText200Response, Integer, Hash)>] DetectFoodInText200Response data, response status code and response headers
    def detect_food_in_text_with_http_info(text, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MiscApi.detect_food_in_text ...'
      end
      # verify the required parameter 'text' is set
      if @api_client.config.client_side_validation && text.nil?
        fail ArgumentError, "Missing the required parameter 'text' when calling MiscApi.detect_food_in_text"
      end
      # resource path
      local_var_path = '/food/detect'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/x-www-form-urlencoded'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}
      form_params['text'] = text

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'DetectFoodInText200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyScheme']

      new_options = opts.merge(
        :operation => :"MiscApi.detect_food_in_text",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MiscApi#detect_food_in_text\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Random Food Joke
    # Get a random joke that is related to food. Caution: this is an endpoint for adults!
    # @param [Hash] opts the optional parameters
    # @return [GetARandomFoodJoke200Response]
    def get_a_random_food_joke(opts = {})
      data, _status_code, _headers = get_a_random_food_joke_with_http_info(opts)
      data
    end

    # Random Food Joke
    # Get a random joke that is related to food. Caution: this is an endpoint for adults!
    # @param [Hash] opts the optional parameters
    # @return [Array<(GetARandomFoodJoke200Response, Integer, Hash)>] GetARandomFoodJoke200Response data, response status code and response headers
    def get_a_random_food_joke_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MiscApi.get_a_random_food_joke ...'
      end
      # resource path
      local_var_path = '/food/jokes/random'

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
      return_type = opts[:debug_return_type] || 'GetARandomFoodJoke200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyScheme']

      new_options = opts.merge(
        :operation => :"MiscApi.get_a_random_food_joke",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MiscApi#get_a_random_food_joke\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Conversation Suggests
    # This endpoint returns suggestions for things the user can say or ask the chatbot.
    # @param query [String] A (partial) query from the user. The endpoint will return if it matches topics it can talk about.
    # @param [Hash] opts the optional parameters
    # @option opts [Float] :number The number of suggestions to return (between 1 and 25).
    # @return [GetConversationSuggests200Response]
    def get_conversation_suggests(query, opts = {})
      data, _status_code, _headers = get_conversation_suggests_with_http_info(query, opts)
      data
    end

    # Conversation Suggests
    # This endpoint returns suggestions for things the user can say or ask the chatbot.
    # @param query [String] A (partial) query from the user. The endpoint will return if it matches topics it can talk about.
    # @param [Hash] opts the optional parameters
    # @option opts [Float] :number The number of suggestions to return (between 1 and 25).
    # @return [Array<(GetConversationSuggests200Response, Integer, Hash)>] GetConversationSuggests200Response data, response status code and response headers
    def get_conversation_suggests_with_http_info(query, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MiscApi.get_conversation_suggests ...'
      end
      # verify the required parameter 'query' is set
      if @api_client.config.client_side_validation && query.nil?
        fail ArgumentError, "Missing the required parameter 'query' when calling MiscApi.get_conversation_suggests"
      end
      # resource path
      local_var_path = '/food/converse/suggest'

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
      return_type = opts[:debug_return_type] || 'GetConversationSuggests200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyScheme']

      new_options = opts.merge(
        :operation => :"MiscApi.get_conversation_suggests",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MiscApi#get_conversation_suggests\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Random Food Trivia
    # Returns random food trivia.
    # @param [Hash] opts the optional parameters
    # @return [GetRandomFoodTrivia200Response]
    def get_random_food_trivia(opts = {})
      data, _status_code, _headers = get_random_food_trivia_with_http_info(opts)
      data
    end

    # Random Food Trivia
    # Returns random food trivia.
    # @param [Hash] opts the optional parameters
    # @return [Array<(GetRandomFoodTrivia200Response, Integer, Hash)>] GetRandomFoodTrivia200Response data, response status code and response headers
    def get_random_food_trivia_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MiscApi.get_random_food_trivia ...'
      end
      # resource path
      local_var_path = '/food/trivia/random'

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
      return_type = opts[:debug_return_type] || 'GetRandomFoodTrivia200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyScheme']

      new_options = opts.merge(
        :operation => :"MiscApi.get_random_food_trivia",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MiscApi#get_random_food_trivia\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Image Analysis by URL
    # Analyze a food image. The API tries to classify the image, guess the nutrition, and find a matching recipes.
    # @param image_url [String] The URL of the image to be analyzed.
    # @param [Hash] opts the optional parameters
    # @return [ImageAnalysisByURL200Response]
    def image_analysis_by_url(image_url, opts = {})
      data, _status_code, _headers = image_analysis_by_url_with_http_info(image_url, opts)
      data
    end

    # Image Analysis by URL
    # Analyze a food image. The API tries to classify the image, guess the nutrition, and find a matching recipes.
    # @param image_url [String] The URL of the image to be analyzed.
    # @param [Hash] opts the optional parameters
    # @return [Array<(ImageAnalysisByURL200Response, Integer, Hash)>] ImageAnalysisByURL200Response data, response status code and response headers
    def image_analysis_by_url_with_http_info(image_url, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MiscApi.image_analysis_by_url ...'
      end
      # verify the required parameter 'image_url' is set
      if @api_client.config.client_side_validation && image_url.nil?
        fail ArgumentError, "Missing the required parameter 'image_url' when calling MiscApi.image_analysis_by_url"
      end
      # resource path
      local_var_path = '/food/images/analyze'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'imageUrl'] = image_url

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ImageAnalysisByURL200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyScheme']

      new_options = opts.merge(
        :operation => :"MiscApi.image_analysis_by_url",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MiscApi#image_analysis_by_url\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Image Classification by URL
    # Classify a food image.
    # @param image_url [String] The URL of the image to be classified.
    # @param [Hash] opts the optional parameters
    # @return [ImageClassificationByURL200Response]
    def image_classification_by_url(image_url, opts = {})
      data, _status_code, _headers = image_classification_by_url_with_http_info(image_url, opts)
      data
    end

    # Image Classification by URL
    # Classify a food image.
    # @param image_url [String] The URL of the image to be classified.
    # @param [Hash] opts the optional parameters
    # @return [Array<(ImageClassificationByURL200Response, Integer, Hash)>] ImageClassificationByURL200Response data, response status code and response headers
    def image_classification_by_url_with_http_info(image_url, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MiscApi.image_classification_by_url ...'
      end
      # verify the required parameter 'image_url' is set
      if @api_client.config.client_side_validation && image_url.nil?
        fail ArgumentError, "Missing the required parameter 'image_url' when calling MiscApi.image_classification_by_url"
      end
      # resource path
      local_var_path = '/food/images/classify'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'imageUrl'] = image_url

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ImageClassificationByURL200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyScheme']

      new_options = opts.merge(
        :operation => :"MiscApi.image_classification_by_url",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MiscApi#image_classification_by_url\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Search All Food
    # Search all food content with one call. That includes recipes, grocery products, menu items, simple foods (ingredients), and food videos.
    # @param query [String] The search query.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :offset The number of results to skip (between 0 and 900).
    # @option opts [Integer] :number The maximum number of items to return (between 1 and 100). Defaults to 10. (default to 10)
    # @return [SearchAllFood200Response]
    def search_all_food(query, opts = {})
      data, _status_code, _headers = search_all_food_with_http_info(query, opts)
      data
    end

    # Search All Food
    # Search all food content with one call. That includes recipes, grocery products, menu items, simple foods (ingredients), and food videos.
    # @param query [String] The search query.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :offset The number of results to skip (between 0 and 900).
    # @option opts [Integer] :number The maximum number of items to return (between 1 and 100). Defaults to 10. (default to 10)
    # @return [Array<(SearchAllFood200Response, Integer, Hash)>] SearchAllFood200Response data, response status code and response headers
    def search_all_food_with_http_info(query, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MiscApi.search_all_food ...'
      end
      # verify the required parameter 'query' is set
      if @api_client.config.client_side_validation && query.nil?
        fail ArgumentError, "Missing the required parameter 'query' when calling MiscApi.search_all_food"
      end
      if @api_client.config.client_side_validation && !opts[:'offset'].nil? && opts[:'offset'] > 900
        fail ArgumentError, 'invalid value for "opts[:"offset"]" when calling MiscApi.search_all_food, must be smaller than or equal to 900.'
      end

      if @api_client.config.client_side_validation && !opts[:'offset'].nil? && opts[:'offset'] < 0
        fail ArgumentError, 'invalid value for "opts[:"offset"]" when calling MiscApi.search_all_food, must be greater than or equal to 0.'
      end

      if @api_client.config.client_side_validation && !opts[:'number'].nil? && opts[:'number'] > 100
        fail ArgumentError, 'invalid value for "opts[:"number"]" when calling MiscApi.search_all_food, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'number'].nil? && opts[:'number'] < 1
        fail ArgumentError, 'invalid value for "opts[:"number"]" when calling MiscApi.search_all_food, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/food/search'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'query'] = query
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
      return_type = opts[:debug_return_type] || 'SearchAllFood200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyScheme']

      new_options = opts.merge(
        :operation => :"MiscApi.search_all_food",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MiscApi#search_all_food\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Search Custom Foods
    # Search custom foods in a user's account.
    # @param username [String] The username.
    # @param hash [String] The private hash for the username.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :query The (natural language) search query.
    # @option opts [Integer] :offset The number of results to skip (between 0 and 900).
    # @option opts [Integer] :number The maximum number of items to return (between 1 and 100). Defaults to 10. (default to 10)
    # @return [SearchCustomFoods200Response]
    def search_custom_foods(username, hash, opts = {})
      data, _status_code, _headers = search_custom_foods_with_http_info(username, hash, opts)
      data
    end

    # Search Custom Foods
    # Search custom foods in a user&#39;s account.
    # @param username [String] The username.
    # @param hash [String] The private hash for the username.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :query The (natural language) search query.
    # @option opts [Integer] :offset The number of results to skip (between 0 and 900).
    # @option opts [Integer] :number The maximum number of items to return (between 1 and 100). Defaults to 10. (default to 10)
    # @return [Array<(SearchCustomFoods200Response, Integer, Hash)>] SearchCustomFoods200Response data, response status code and response headers
    def search_custom_foods_with_http_info(username, hash, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MiscApi.search_custom_foods ...'
      end
      # verify the required parameter 'username' is set
      if @api_client.config.client_side_validation && username.nil?
        fail ArgumentError, "Missing the required parameter 'username' when calling MiscApi.search_custom_foods"
      end
      # verify the required parameter 'hash' is set
      if @api_client.config.client_side_validation && hash.nil?
        fail ArgumentError, "Missing the required parameter 'hash' when calling MiscApi.search_custom_foods"
      end
      if @api_client.config.client_side_validation && !opts[:'offset'].nil? && opts[:'offset'] > 900
        fail ArgumentError, 'invalid value for "opts[:"offset"]" when calling MiscApi.search_custom_foods, must be smaller than or equal to 900.'
      end

      if @api_client.config.client_side_validation && !opts[:'offset'].nil? && opts[:'offset'] < 0
        fail ArgumentError, 'invalid value for "opts[:"offset"]" when calling MiscApi.search_custom_foods, must be greater than or equal to 0.'
      end

      if @api_client.config.client_side_validation && !opts[:'number'].nil? && opts[:'number'] > 100
        fail ArgumentError, 'invalid value for "opts[:"number"]" when calling MiscApi.search_custom_foods, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'number'].nil? && opts[:'number'] < 1
        fail ArgumentError, 'invalid value for "opts[:"number"]" when calling MiscApi.search_custom_foods, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/food/customFoods/search'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'username'] = username
      query_params[:'hash'] = hash
      query_params[:'query'] = opts[:'query'] if !opts[:'query'].nil?
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
      return_type = opts[:debug_return_type] || 'SearchCustomFoods200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyScheme']

      new_options = opts.merge(
        :operation => :"MiscApi.search_custom_foods",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MiscApi#search_custom_foods\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Search Food Videos
    # Find recipe and other food related videos.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :query The (natural language) search query.
    # @option opts [String] :type The type of the recipes. See a full list of supported meal types.
    # @option opts [String] :cuisine The cuisine(s) of the recipes. One or more, comma separated. See a full list of supported cuisines.
    # @option opts [String] :diet The diet for which the recipes must be suitable. See a full list of supported diets.
    # @option opts [String] :include_ingredients A comma-separated list of ingredients that the recipes should contain.
    # @option opts [String] :exclude_ingredients A comma-separated list of ingredients or ingredient types that the recipes must not contain.
    # @option opts [Float] :min_length Minimum video length in seconds.
    # @option opts [Float] :max_length Maximum video length in seconds.
    # @option opts [Integer] :offset The number of results to skip (between 0 and 900).
    # @option opts [Integer] :number The maximum number of items to return (between 1 and 100). Defaults to 10. (default to 10)
    # @return [SearchFoodVideos200Response]
    def search_food_videos(opts = {})
      data, _status_code, _headers = search_food_videos_with_http_info(opts)
      data
    end

    # Search Food Videos
    # Find recipe and other food related videos.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :query The (natural language) search query.
    # @option opts [String] :type The type of the recipes. See a full list of supported meal types.
    # @option opts [String] :cuisine The cuisine(s) of the recipes. One or more, comma separated. See a full list of supported cuisines.
    # @option opts [String] :diet The diet for which the recipes must be suitable. See a full list of supported diets.
    # @option opts [String] :include_ingredients A comma-separated list of ingredients that the recipes should contain.
    # @option opts [String] :exclude_ingredients A comma-separated list of ingredients or ingredient types that the recipes must not contain.
    # @option opts [Float] :min_length Minimum video length in seconds.
    # @option opts [Float] :max_length Maximum video length in seconds.
    # @option opts [Integer] :offset The number of results to skip (between 0 and 900).
    # @option opts [Integer] :number The maximum number of items to return (between 1 and 100). Defaults to 10. (default to 10)
    # @return [Array<(SearchFoodVideos200Response, Integer, Hash)>] SearchFoodVideos200Response data, response status code and response headers
    def search_food_videos_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MiscApi.search_food_videos ...'
      end
      if @api_client.config.client_side_validation && !opts[:'offset'].nil? && opts[:'offset'] > 900
        fail ArgumentError, 'invalid value for "opts[:"offset"]" when calling MiscApi.search_food_videos, must be smaller than or equal to 900.'
      end

      if @api_client.config.client_side_validation && !opts[:'offset'].nil? && opts[:'offset'] < 0
        fail ArgumentError, 'invalid value for "opts[:"offset"]" when calling MiscApi.search_food_videos, must be greater than or equal to 0.'
      end

      if @api_client.config.client_side_validation && !opts[:'number'].nil? && opts[:'number'] > 100
        fail ArgumentError, 'invalid value for "opts[:"number"]" when calling MiscApi.search_food_videos, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'number'].nil? && opts[:'number'] < 1
        fail ArgumentError, 'invalid value for "opts[:"number"]" when calling MiscApi.search_food_videos, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/food/videos/search'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'query'] = opts[:'query'] if !opts[:'query'].nil?
      query_params[:'type'] = opts[:'type'] if !opts[:'type'].nil?
      query_params[:'cuisine'] = opts[:'cuisine'] if !opts[:'cuisine'].nil?
      query_params[:'diet'] = opts[:'diet'] if !opts[:'diet'].nil?
      query_params[:'includeIngredients'] = opts[:'include_ingredients'] if !opts[:'include_ingredients'].nil?
      query_params[:'excludeIngredients'] = opts[:'exclude_ingredients'] if !opts[:'exclude_ingredients'].nil?
      query_params[:'minLength'] = opts[:'min_length'] if !opts[:'min_length'].nil?
      query_params[:'maxLength'] = opts[:'max_length'] if !opts[:'max_length'].nil?
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
      return_type = opts[:debug_return_type] || 'SearchFoodVideos200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyScheme']

      new_options = opts.merge(
        :operation => :"MiscApi.search_food_videos",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MiscApi#search_food_videos\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Search Site Content
    # Search spoonacular's site content. You'll be able to find everything that you could also find using the search suggestions on spoonacular.com. This is a suggest API so you can send partial strings as queries.
    # @param query [String] The query to search for. You can also use partial queries such as \&quot;spagh\&quot; to already find spaghetti recipes, articles, grocery products, and other content.
    # @param [Hash] opts the optional parameters
    # @return [SearchSiteContent200Response]
    def search_site_content(query, opts = {})
      data, _status_code, _headers = search_site_content_with_http_info(query, opts)
      data
    end

    # Search Site Content
    # Search spoonacular&#39;s site content. You&#39;ll be able to find everything that you could also find using the search suggestions on spoonacular.com. This is a suggest API so you can send partial strings as queries.
    # @param query [String] The query to search for. You can also use partial queries such as \&quot;spagh\&quot; to already find spaghetti recipes, articles, grocery products, and other content.
    # @param [Hash] opts the optional parameters
    # @return [Array<(SearchSiteContent200Response, Integer, Hash)>] SearchSiteContent200Response data, response status code and response headers
    def search_site_content_with_http_info(query, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MiscApi.search_site_content ...'
      end
      # verify the required parameter 'query' is set
      if @api_client.config.client_side_validation && query.nil?
        fail ArgumentError, "Missing the required parameter 'query' when calling MiscApi.search_site_content"
      end
      # resource path
      local_var_path = '/food/site/search'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'query'] = query

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'SearchSiteContent200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyScheme']

      new_options = opts.merge(
        :operation => :"MiscApi.search_site_content",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MiscApi#search_site_content\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Talk to Chatbot
    # This endpoint can be used to have a conversation about food with the spoonacular chatbot. Use the \"Get Conversation Suggests\" endpoint to show your user what he or she can say.
    # @param text [String] The request / question / answer from the user to the chatbot.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :context_id An arbitrary globally unique id for your conversation. The conversation can contain states so you should pass your context id if you want the bot to be able to remember the conversation.
    # @return [TalkToChatbot200Response]
    def talk_to_chatbot(text, opts = {})
      data, _status_code, _headers = talk_to_chatbot_with_http_info(text, opts)
      data
    end

    # Talk to Chatbot
    # This endpoint can be used to have a conversation about food with the spoonacular chatbot. Use the \&quot;Get Conversation Suggests\&quot; endpoint to show your user what he or she can say.
    # @param text [String] The request / question / answer from the user to the chatbot.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :context_id An arbitrary globally unique id for your conversation. The conversation can contain states so you should pass your context id if you want the bot to be able to remember the conversation.
    # @return [Array<(TalkToChatbot200Response, Integer, Hash)>] TalkToChatbot200Response data, response status code and response headers
    def talk_to_chatbot_with_http_info(text, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MiscApi.talk_to_chatbot ...'
      end
      # verify the required parameter 'text' is set
      if @api_client.config.client_side_validation && text.nil?
        fail ArgumentError, "Missing the required parameter 'text' when calling MiscApi.talk_to_chatbot"
      end
      # resource path
      local_var_path = '/food/converse'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'text'] = text
      query_params[:'contextId'] = opts[:'context_id'] if !opts[:'context_id'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'TalkToChatbot200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyScheme']

      new_options = opts.merge(
        :operation => :"MiscApi.talk_to_chatbot",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MiscApi#talk_to_chatbot\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
