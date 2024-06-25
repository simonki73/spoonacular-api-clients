# NOTE: This file is auto generated by OpenAPI Generator 7.7.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule SpoonacularAPI.Model.MapIngredientsToGroceryProducts200ResponseInner do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :original,
    :originalName,
    :ingredientImage,
    :meta,
    :products
  ]

  @type t :: %__MODULE__{
    :original => String.t,
    :originalName => String.t,
    :ingredientImage => String.t,
    :meta => [String.t],
    :products => [SpoonacularAPI.Model.MapIngredientsToGroceryProducts200ResponseInnerProductsInner.t]
  }

  alias SpoonacularAPI.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:products, :list, SpoonacularAPI.Model.MapIngredientsToGroceryProducts200ResponseInnerProductsInner)
  end
end

