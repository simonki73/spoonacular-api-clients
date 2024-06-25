# NOTE: This file is auto generated by OpenAPI Generator 7.7.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule SpoonacularAPI.Model.SearchGroceryProducts200Response do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :products,
    :totalProducts,
    :type,
    :offset,
    :number
  ]

  @type t :: %__MODULE__{
    :products => [SpoonacularAPI.Model.AutocompleteRecipeSearch200ResponseInner.t],
    :totalProducts => integer(),
    :type => String.t,
    :offset => integer(),
    :number => integer()
  }

  alias SpoonacularAPI.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:products, :list, SpoonacularAPI.Model.AutocompleteRecipeSearch200ResponseInner)
  end
end

