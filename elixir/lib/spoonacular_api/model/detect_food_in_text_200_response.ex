# NOTE: This file is auto generated by OpenAPI Generator 7.7.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule SpoonacularAPI.Model.DetectFoodInText200Response do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :annotations
  ]

  @type t :: %__MODULE__{
    :annotations => [SpoonacularAPI.Model.DetectFoodInText200ResponseAnnotationsInner.t]
  }

  alias SpoonacularAPI.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:annotations, :list, SpoonacularAPI.Model.DetectFoodInText200ResponseAnnotationsInner)
  end
end

