# NOTE: This file is auto generated by OpenAPI Generator 7.3.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule SpoonacularAPI.Model.GetMealPlanWeek200ResponseDaysInnerNutritionSummaryNutrientsInner do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :name,
    :amount,
    :unit,
    :percentDailyNeeds
  ]

  @type t :: %__MODULE__{
    :name => String.t,
    :amount => float(),
    :unit => String.t,
    :percentDailyNeeds => float()
  }

  def decode(value) do
    value
  end
end
