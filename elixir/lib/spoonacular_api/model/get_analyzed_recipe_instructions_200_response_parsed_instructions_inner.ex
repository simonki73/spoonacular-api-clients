# NOTE: This file is auto generated by OpenAPI Generator 7.8.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule SpoonacularAPI.Model.GetAnalyzedRecipeInstructions200ResponseParsedInstructionsInner do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :name,
    :steps
  ]

  @type t :: %__MODULE__{
    :name => String.t,
    :steps => [SpoonacularAPI.Model.GetAnalyzedRecipeInstructions200ResponseParsedInstructionsInnerStepsInner.t] | nil
  }

  alias SpoonacularAPI.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:steps, :list, SpoonacularAPI.Model.GetAnalyzedRecipeInstructions200ResponseParsedInstructionsInnerStepsInner)
  end
end

