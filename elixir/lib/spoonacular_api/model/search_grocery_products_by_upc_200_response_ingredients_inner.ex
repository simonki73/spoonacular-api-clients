# NOTE: This file is auto generated by OpenAPI Generator 7.7.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule SpoonacularAPI.Model.SearchGroceryProductsByUpc200ResponseIngredientsInner do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :description,
    :name,
    :safety_level
  ]

  @type t :: %__MODULE__{
    :description => String.t | nil,
    :name => String.t,
    :safety_level => String.t | nil
  }

  def decode(value) do
    value
  end
end

