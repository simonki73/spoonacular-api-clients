# NOTE: This file is auto generated by OpenAPI Generator 7.8.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule SpoonacularAPI.Model.SearchFoodVideos200Response do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :videos,
    :totalResults
  ]

  @type t :: %__MODULE__{
    :videos => [SpoonacularAPI.Model.SearchFoodVideos200ResponseVideosInner.t],
    :totalResults => integer()
  }

  alias SpoonacularAPI.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:videos, :list, SpoonacularAPI.Model.SearchFoodVideos200ResponseVideosInner)
  end
end

