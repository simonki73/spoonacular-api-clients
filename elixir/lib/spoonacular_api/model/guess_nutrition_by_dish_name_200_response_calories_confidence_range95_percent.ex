# NOTE: This file is auto generated by OpenAPI Generator 7.7.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule SpoonacularAPI.Model.GuessNutritionByDishName200ResponseCaloriesConfidenceRange95Percent do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :max,
    :min
  ]

  @type t :: %__MODULE__{
    :max => float(),
    :min => float()
  }

  def decode(value) do
    value
  end
end

