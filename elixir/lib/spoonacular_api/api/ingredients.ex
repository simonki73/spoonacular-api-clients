# NOTE: This file is auto generated by OpenAPI Generator 7.3.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule SpoonacularAPI.Api.Ingredients do
  @moduledoc """
  API calls for all endpoints tagged `Ingredients`.
  """

  alias SpoonacularAPI.Connection
  import SpoonacularAPI.RequestBuilder

  @doc """
  Autocomplete Ingredient Search
  Autocomplete the entry of an ingredient.

  ### Parameters

  - `connection` (SpoonacularAPI.Connection): Connection to server
  - `opts` (keyword): Optional parameters
    - `:query` (String.t): The (natural language) search query.
    - `:number` (integer()): The maximum number of items to return (between 1 and 100). Defaults to 10.
    - `:metaInformation` (boolean()): Whether to return more meta information about the ingredients.
    - `:intolerances` (String.t): A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered. See a full list of supported intolerances.
    - `:language` (String.t): The language of the input. Either 'en' or 'de'.

  ### Returns

  - `{:ok, [%AutocompleteIngredientSearch200ResponseInner{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec autocomplete_ingredient_search(Tesla.Env.client, keyword()) :: {:ok, nil} | {:ok, list(SpoonacularAPI.Model.AutocompleteIngredientSearch200ResponseInner.t)} | {:error, Tesla.Env.t}
  def autocomplete_ingredient_search(connection, opts \\ []) do
    optional_params = %{
      :query => :query,
      :number => :query,
      :metaInformation => :query,
      :intolerances => :query,
      :language => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/food/ingredients/autocomplete")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, SpoonacularAPI.Model.AutocompleteIngredientSearch200ResponseInner},
      {401, false},
      {403, false},
      {404, false}
    ])
  end

  @doc """
  Compute Ingredient Amount
  Compute the amount you need of a certain ingredient for a certain nutritional goal. For example, how much pineapple do you have to eat to get 10 grams of protein?

  ### Parameters

  - `connection` (SpoonacularAPI.Connection): Connection to server
  - `id` (float()): The id of the ingredient you want the amount for.
  - `nutrient` (String.t): The target nutrient. See a list of supported nutrients.
  - `target` (float()): The target number of the given nutrient.
  - `opts` (keyword): Optional parameters
    - `:unit` (String.t): The target unit.

  ### Returns

  - `{:ok, SpoonacularAPI.Model.ComputeIngredientAmount200Response.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec compute_ingredient_amount(Tesla.Env.client, float(), String.t, float(), keyword()) :: {:ok, nil} | {:ok, SpoonacularAPI.Model.ComputeIngredientAmount200Response.t} | {:error, Tesla.Env.t}
  def compute_ingredient_amount(connection, id, nutrient, target, opts \\ []) do
    optional_params = %{
      :unit => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/food/ingredients/#{id}/amount")
      |> add_param(:query, :nutrient, nutrient)
      |> add_param(:query, :target, target)
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, SpoonacularAPI.Model.ComputeIngredientAmount200Response},
      {401, false},
      {403, false},
      {404, false}
    ])
  end

  @doc """
  Get Ingredient Information
  Use an ingredient id to get all available information about an ingredient, such as its image and supermarket aisle.

  ### Parameters

  - `connection` (SpoonacularAPI.Connection): Connection to server
  - `id` (integer()): The item's id.
  - `opts` (keyword): Optional parameters
    - `:amount` (float()): The amount of this ingredient.
    - `:unit` (String.t): The unit for the given amount.

  ### Returns

  - `{:ok, SpoonacularAPI.Model.GetIngredientInformation200Response.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_ingredient_information(Tesla.Env.client, integer(), keyword()) :: {:ok, nil} | {:ok, SpoonacularAPI.Model.GetIngredientInformation200Response.t} | {:error, Tesla.Env.t}
  def get_ingredient_information(connection, id, opts \\ []) do
    optional_params = %{
      :amount => :query,
      :unit => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/food/ingredients/#{id}/information")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, SpoonacularAPI.Model.GetIngredientInformation200Response},
      {401, false},
      {403, false},
      {404, false}
    ])
  end

  @doc """
  Get Ingredient Substitutes
  Search for substitutes for a given ingredient.

  ### Parameters

  - `connection` (SpoonacularAPI.Connection): Connection to server
  - `ingredient_name` (String.t): The name of the ingredient you want to replace.
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, SpoonacularAPI.Model.GetIngredientSubstitutes200Response.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_ingredient_substitutes(Tesla.Env.client, String.t, keyword()) :: {:ok, nil} | {:ok, SpoonacularAPI.Model.GetIngredientSubstitutes200Response.t} | {:error, Tesla.Env.t}
  def get_ingredient_substitutes(connection, ingredient_name, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/food/ingredients/substitutes")
      |> add_param(:query, :ingredientName, ingredient_name)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, SpoonacularAPI.Model.GetIngredientSubstitutes200Response},
      {401, false},
      {403, false},
      {404, false}
    ])
  end

  @doc """
  Get Ingredient Substitutes by ID
  Search for substitutes for a given ingredient.

  ### Parameters

  - `connection` (SpoonacularAPI.Connection): Connection to server
  - `id` (integer()): The item's id.
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, SpoonacularAPI.Model.GetIngredientSubstitutes200Response.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_ingredient_substitutes_by_id(Tesla.Env.client, integer(), keyword()) :: {:ok, nil} | {:ok, SpoonacularAPI.Model.GetIngredientSubstitutes200Response.t} | {:error, Tesla.Env.t}
  def get_ingredient_substitutes_by_id(connection, id, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/food/ingredients/#{id}/substitutes")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, SpoonacularAPI.Model.GetIngredientSubstitutes200Response},
      {401, false},
      {403, false},
      {404, false}
    ])
  end

  @doc """
  Ingredient Search
  Search for simple whole foods (e.g. fruits, vegetables, nuts, grains, meat, fish, dairy etc.).

  ### Parameters

  - `connection` (SpoonacularAPI.Connection): Connection to server
  - `opts` (keyword): Optional parameters
    - `:query` (String.t): The (natural language) search query.
    - `:addChildren` (boolean()): Whether to add children of found foods.
    - `:minProteinPercent` (float()): The minimum percentage of protein the food must have (between 0 and 100).
    - `:maxProteinPercent` (float()): The maximum percentage of protein the food can have (between 0 and 100).
    - `:minFatPercent` (float()): The minimum percentage of fat the food must have (between 0 and 100).
    - `:maxFatPercent` (float()): The maximum percentage of fat the food can have (between 0 and 100).
    - `:minCarbsPercent` (float()): The minimum percentage of carbs the food must have (between 0 and 100).
    - `:maxCarbsPercent` (float()): The maximum percentage of carbs the food can have (between 0 and 100).
    - `:metaInformation` (boolean()): Whether to return more meta information about the ingredients.
    - `:intolerances` (String.t): A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered. See a full list of supported intolerances.
    - `:sort` (String.t): The strategy to sort recipes by. See a full list of supported sorting options.
    - `:sortDirection` (String.t): The direction in which to sort. Must be either 'asc' (ascending) or 'desc' (descending).
    - `:offset` (integer()): The number of results to skip (between 0 and 900).
    - `:number` (integer()): The maximum number of items to return (between 1 and 100). Defaults to 10.
    - `:language` (String.t): The language of the input. Either 'en' or 'de'.

  ### Returns

  - `{:ok, SpoonacularAPI.Model.IngredientSearch200Response.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec ingredient_search(Tesla.Env.client, keyword()) :: {:ok, nil} | {:ok, SpoonacularAPI.Model.IngredientSearch200Response.t} | {:error, Tesla.Env.t}
  def ingredient_search(connection, opts \\ []) do
    optional_params = %{
      :query => :query,
      :addChildren => :query,
      :minProteinPercent => :query,
      :maxProteinPercent => :query,
      :minFatPercent => :query,
      :maxFatPercent => :query,
      :minCarbsPercent => :query,
      :maxCarbsPercent => :query,
      :metaInformation => :query,
      :intolerances => :query,
      :sort => :query,
      :sortDirection => :query,
      :offset => :query,
      :number => :query,
      :language => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/food/ingredients/search")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, SpoonacularAPI.Model.IngredientSearch200Response},
      {401, false},
      {403, false},
      {404, false}
    ])
  end

  @doc """
  Ingredients by ID Image
  Visualize a recipe's ingredient list.

  ### Parameters

  - `connection` (SpoonacularAPI.Connection): Connection to server
  - `id` (float()): The recipe id.
  - `opts` (keyword): Optional parameters
    - `:measure` (String.t): Whether the the measures should be 'us' or 'metric'.

  ### Returns

  - `{:ok, map()}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec ingredients_by_id_image(Tesla.Env.client, float(), keyword()) :: {:ok, nil} | {:ok, Map.t} | {:error, Tesla.Env.t}
  def ingredients_by_id_image(connection, id, opts \\ []) do
    optional_params = %{
      :measure => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/recipes/#{id}/ingredientWidget.png")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %{}},
      {401, false},
      {403, false},
      {404, false}
    ])
  end

  @doc """
  Map Ingredients to Grocery Products
  Map a set of ingredients to products you can buy in the grocery store.

  ### Parameters

  - `connection` (SpoonacularAPI.Connection): Connection to server
  - `map_ingredients_to_grocery_products_request` (MapIngredientsToGroceryProductsRequest): 
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, [%MapIngredientsToGroceryProducts200ResponseInner{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec map_ingredients_to_grocery_products(Tesla.Env.client, SpoonacularAPI.Model.MapIngredientsToGroceryProductsRequest.t, keyword()) :: {:ok, nil} | {:ok, list(SpoonacularAPI.Model.MapIngredientsToGroceryProducts200ResponseInner.t)} | {:error, Tesla.Env.t}
  def map_ingredients_to_grocery_products(connection, map_ingredients_to_grocery_products_request, _opts \\ []) do
    request =
      %{}
      |> method(:post)
      |> url("/food/ingredients/map")
      |> add_param(:body, :body, map_ingredients_to_grocery_products_request)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, SpoonacularAPI.Model.MapIngredientsToGroceryProducts200ResponseInner},
      {401, false},
      {403, false},
      {404, false}
    ])
  end

  @doc """
  Ingredients Widget
  Visualize ingredients of a recipe. You can play around with that endpoint!

  ### Parameters

  - `connection` (SpoonacularAPI.Connection): Connection to server
  - `opts` (keyword): Optional parameters
    - `:"Content-Type"` (String.t): The content type.
    - `:language` (String.t): The language of the input. Either 'en' or 'de'.
    - `:Accept` (String.t): Accept header.

  ### Returns

  - `{:ok, String.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec visualize_ingredients(Tesla.Env.client, keyword()) :: {:ok, nil} | {:ok, String.t} | {:error, Tesla.Env.t}
  def visualize_ingredients(connection, opts \\ []) do
    optional_params = %{
      :"Content-Type" => :headers,
      :language => :query,
      :Accept => :headers
    }

    request =
      %{}
      |> method(:post)
      |> url("/recipes/visualizeIngredients")
      |> add_optional_params(optional_params, opts)
      |> ensure_body()
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, false},
      {401, false},
      {403, false},
      {404, false}
    ])
  end
end