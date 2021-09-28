# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule com.spoonacular.client.Model.InlineResponse20036 do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"id",
    :"title",
    :"restaurantChain",
    :"nutrition",
    :"badges",
    :"breadcrumbs",
    :"generatedText",
    :"imageType",
    :"likes",
    :"servings",
    :"price",
    :"spoonacularScore"
  ]

  @type t :: %__MODULE__{
    :"id" => integer(),
    :"title" => String.t,
    :"restaurantChain" => String.t,
    :"nutrition" => InlineResponse20028Nutrition,
    :"badges" => [String.t],
    :"breadcrumbs" => [String.t],
    :"generatedText" => String.t | nil,
    :"imageType" => String.t,
    :"likes" => float(),
    :"servings" => InlineResponse20028Servings,
    :"price" => float() | nil,
    :"spoonacularScore" => float() | nil
  }
end

defimpl Poison.Decoder, for: com.spoonacular.client.Model.InlineResponse20036 do
  import com.spoonacular.client.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"nutrition", :struct, com.spoonacular.client.Model.InlineResponse20028Nutrition, options)
    |> deserialize(:"servings", :struct, com.spoonacular.client.Model.InlineResponse20028Servings, options)
  end
end

