# NOTE: This file is auto generated by OpenAPI Generator 7.3.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule SpoonacularAPI.Model.SearchFoodVideos200ResponseVideosInner do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :title,
    :length,
    :rating,
    :shortTitle,
    :thumbnail,
    :views,
    :youTubeId
  ]

  @type t :: %__MODULE__{
    :title => String.t,
    :length => integer(),
    :rating => float(),
    :shortTitle => String.t,
    :thumbnail => String.t,
    :views => integer(),
    :youTubeId => String.t
  }

  def decode(value) do
    value
  end
end
