# NOTE: This file is auto generated by OpenAPI Generator 7.7.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule SpoonacularAPI.Model.GetRandomRecipes200Response do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :recipes
  ]

  @type t :: %__MODULE__{
    :recipes => [SpoonacularAPI.Model.GetRandomRecipes200ResponseRecipesInner.t]
  }

  alias SpoonacularAPI.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:recipes, :list, SpoonacularAPI.Model.GetRandomRecipes200ResponseRecipesInner)
  end
end

