# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule com.spoonacular.client.Model.InlineResponse20018Dishes do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"image",
    :"name"
  ]

  @type t :: %__MODULE__{
    :"image" => String.t,
    :"name" => String.t
  }
end

defimpl Poison.Decoder, for: com.spoonacular.client.Model.InlineResponse20018Dishes do
  def decode(value, _options) do
    value
  end
end

