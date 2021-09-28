# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule com.spoonacular.client.Model.InlineResponse20044ProductMatches do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"id",
    :"title",
    :"averageRating",
    :"description",
    :"imageUrl",
    :"link",
    :"price",
    :"ratingCount",
    :"score"
  ]

  @type t :: %__MODULE__{
    :"id" => integer(),
    :"title" => String.t,
    :"averageRating" => float(),
    :"description" => Map | nil,
    :"imageUrl" => String.t,
    :"link" => String.t,
    :"price" => String.t,
    :"ratingCount" => integer(),
    :"score" => float()
  }
end

defimpl Poison.Decoder, for: com.spoonacular.client.Model.InlineResponse20044ProductMatches do
  def decode(value, _options) do
    value
  end
end

