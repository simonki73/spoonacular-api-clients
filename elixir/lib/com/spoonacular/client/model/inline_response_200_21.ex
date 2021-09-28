# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule com.spoonacular.client.Model.InlineResponse20021 do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"calories",
    :"carbs",
    :"fat",
    :"protein",
    :"recipesUsed"
  ]

  @type t :: %__MODULE__{
    :"calories" => InlineResponse20021Calories,
    :"carbs" => InlineResponse20021Calories,
    :"fat" => InlineResponse20021Calories,
    :"protein" => InlineResponse20021Calories,
    :"recipesUsed" => integer()
  }
end

defimpl Poison.Decoder, for: com.spoonacular.client.Model.InlineResponse20021 do
  import com.spoonacular.client.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"calories", :struct, com.spoonacular.client.Model.InlineResponse20021Calories, options)
    |> deserialize(:"carbs", :struct, com.spoonacular.client.Model.InlineResponse20021Calories, options)
    |> deserialize(:"fat", :struct, com.spoonacular.client.Model.InlineResponse20021Calories, options)
    |> deserialize(:"protein", :struct, com.spoonacular.client.Model.InlineResponse20021Calories, options)
  end
end

