# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule com.spoonacular.client.Model.InlineResponse20040Value do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"id",
    :"title",
    :"imageType"
  ]

  @type t :: %__MODULE__{
    :"id" => float(),
    :"title" => String.t,
    :"imageType" => String.t
  }
end

defimpl Poison.Decoder, for: com.spoonacular.client.Model.InlineResponse20040Value do
  def decode(value, _options) do
    value
  end
end

