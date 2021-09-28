# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule com.spoonacular.client.Model.InlineResponse200Results do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"id",
    :"title",
    :"calories",
    :"carbs",
    :"fat",
    :"image",
    :"imageType",
    :"protein"
  ]

  @type t :: %__MODULE__{
    :"id" => integer(),
    :"title" => String.t,
    :"calories" => float(),
    :"carbs" => String.t,
    :"fat" => String.t,
    :"image" => String.t,
    :"imageType" => String.t,
    :"protein" => String.t
  }
end

defimpl Poison.Decoder, for: com.spoonacular.client.Model.InlineResponse200Results do
  def decode(value, _options) do
    value
  end
end

