# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule com.spoonacular.client.Model.InlineObject2 do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"ingredients",
    :"servings"
  ]

  @type t :: %__MODULE__{
    :"ingredients" => [String.t],
    :"servings" => float()
  }
end

defimpl Poison.Decoder, for: com.spoonacular.client.Model.InlineObject2 do
  def decode(value, _options) do
    value
  end
end

