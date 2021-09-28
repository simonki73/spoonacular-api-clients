# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule com.spoonacular.client.Model.InlineResponse20025 do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"results",
    :"offset",
    :"number",
    :"totalResults"
  ]

  @type t :: %__MODULE__{
    :"results" => [InlineResponse20025Results],
    :"offset" => integer(),
    :"number" => integer(),
    :"totalResults" => integer()
  }
end

defimpl Poison.Decoder, for: com.spoonacular.client.Model.InlineResponse20025 do
  import com.spoonacular.client.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"results", :list, com.spoonacular.client.Model.InlineResponse20025Results, options)
  end
end

