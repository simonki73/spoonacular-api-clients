# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule com.spoonacular.client.Model.InlineResponse20048NutritionCaloriesConfidenceRange95Percent do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"min",
    :"max"
  ]

  @type t :: %__MODULE__{
    :"min" => float(),
    :"max" => float()
  }
end

defimpl Poison.Decoder, for: com.spoonacular.client.Model.InlineResponse20048NutritionCaloriesConfidenceRange95Percent do
  def decode(value, _options) do
    value
  end
end

