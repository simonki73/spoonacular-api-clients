# NOTE: This file is auto generated by OpenAPI Generator 7.7.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule SpoonacularAPI.Model.GetRecipeIngredientsById200Response do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :ingredients
  ]

  @type t :: %__MODULE__{
    :ingredients => [SpoonacularAPI.Model.GetRecipeIngredientsById200ResponseIngredientsInner.t]
  }

  alias SpoonacularAPI.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:ingredients, :list, SpoonacularAPI.Model.GetRecipeIngredientsById200ResponseIngredientsInner)
  end
end

