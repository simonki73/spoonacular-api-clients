# NOTE: This file is auto generated by OpenAPI Generator 7.8.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule SpoonacularAPI.Model.GetMealPlanWeek200ResponseDaysInnerItemsInnerValue do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :servings,
    :id,
    :title,
    :imageType
  ]

  @type t :: %__MODULE__{
    :servings => float(),
    :id => float(),
    :title => String.t,
    :imageType => String.t
  }

  def decode(value) do
    value
  end
end

