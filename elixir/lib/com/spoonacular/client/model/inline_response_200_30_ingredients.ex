# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule com.spoonacular.client.Model.InlineResponse20030Ingredients do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"description",
    :"name",
    :"safety_level"
  ]

  @type t :: %__MODULE__{
    :"description" => Map | nil,
    :"name" => String.t,
    :"safety_level" => Map | nil
  }
end

defimpl Poison.Decoder, for: com.spoonacular.client.Model.InlineResponse20030Ingredients do
  def decode(value, _options) do
    value
  end
end

