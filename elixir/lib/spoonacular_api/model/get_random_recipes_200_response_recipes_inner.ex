# NOTE: This file is auto generated by OpenAPI Generator 7.7.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule SpoonacularAPI.Model.GetRandomRecipes200ResponseRecipesInner do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :id,
    :title,
    :image,
    :imageType,
    :servings,
    :readyInMinutes,
    :license,
    :sourceName,
    :sourceUrl,
    :spoonacularSourceUrl,
    :aggregateLikes,
    :healthScore,
    :spoonacularScore,
    :pricePerServing,
    :analyzedInstructions,
    :cheap,
    :creditsText,
    :cuisines,
    :dairyFree,
    :diets,
    :gaps,
    :glutenFree,
    :instructions,
    :ketogenic,
    :lowFodmap,
    :occasions,
    :sustainable,
    :vegan,
    :vegetarian,
    :veryHealthy,
    :veryPopular,
    :whole30,
    :weightWatcherSmartPoints,
    :dishTypes,
    :extendedIngredients,
    :summary,
    :winePairing
  ]

  @type t :: %__MODULE__{
    :id => integer(),
    :title => String.t,
    :image => String.t,
    :imageType => String.t,
    :servings => float(),
    :readyInMinutes => integer(),
    :license => String.t,
    :sourceName => String.t,
    :sourceUrl => String.t,
    :spoonacularSourceUrl => String.t,
    :aggregateLikes => float(),
    :healthScore => float(),
    :spoonacularScore => float(),
    :pricePerServing => float(),
    :analyzedInstructions => [map()] | nil,
    :cheap => boolean(),
    :creditsText => String.t,
    :cuisines => [String.t] | nil,
    :dairyFree => boolean(),
    :diets => [String.t] | nil,
    :gaps => String.t,
    :glutenFree => boolean(),
    :instructions => String.t,
    :ketogenic => boolean(),
    :lowFodmap => boolean(),
    :occasions => [String.t] | nil,
    :sustainable => boolean(),
    :vegan => boolean(),
    :vegetarian => boolean(),
    :veryHealthy => boolean(),
    :veryPopular => boolean(),
    :whole30 => boolean(),
    :weightWatcherSmartPoints => float(),
    :dishTypes => [String.t] | nil,
    :extendedIngredients => [SpoonacularAPI.Model.GetRecipeInformation200ResponseExtendedIngredientsInner.t] | nil,
    :summary => String.t,
    :winePairing => SpoonacularAPI.Model.GetRecipeInformation200ResponseWinePairing.t | nil
  }

  alias SpoonacularAPI.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:extendedIngredients, :list, SpoonacularAPI.Model.GetRecipeInformation200ResponseExtendedIngredientsInner)
     |> Deserializer.deserialize(:winePairing, :struct, SpoonacularAPI.Model.GetRecipeInformation200ResponseWinePairing)
  end
end

