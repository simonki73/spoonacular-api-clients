# NOTE: This file is auto generated by OpenAPI Generator 7.3.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule SpoonacularAPI.Model.DeleteFromMealPlanRequest do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :username,
    :id,
    :hash
  ]

  @type t :: %__MODULE__{
    :username => String.t,
    :id => float(),
    :hash => String.t
  }

  def decode(value) do
    value
  end
end
