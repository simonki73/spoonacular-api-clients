# NOTE: This file is auto generated by OpenAPI Generator 7.3.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule SpoonacularAPI.Model.ClearMealPlanDayRequest do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :username,
    :date,
    :hash
  ]

  @type t :: %__MODULE__{
    :username => String.t,
    :date => String.t,
    :hash => String.t
  }

  def decode(value) do
    value
  end
end
