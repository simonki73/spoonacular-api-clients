# NOTE: This file is auto generated by OpenAPI Generator 7.3.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule SpoonacularAPI.Model.AddToMealPlanRequestValue do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :ingredients
  ]

  @type t :: %__MODULE__{
    :ingredients => [SpoonacularAPI.Model.AddToMealPlanRequestValueIngredientsInner.t]
  }

  alias SpoonacularAPI.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:ingredients, :list, SpoonacularAPI.Model.AddToMealPlanRequestValueIngredientsInner)
  end
end
