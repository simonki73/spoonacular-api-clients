# NOTE: This file is auto generated by OpenAPI Generator 7.8.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule SpoonacularAPI.Model.GetConversationSuggests200ResponseSuggests do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :_
  ]

  @type t :: %__MODULE__{
    :_ => [SpoonacularAPI.Model.GetConversationSuggests200ResponseSuggestsInner.t]
  }

  alias SpoonacularAPI.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:_, :list, SpoonacularAPI.Model.GetConversationSuggests200ResponseSuggestsInner)
  end
end

