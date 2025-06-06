# NOTE: This file is auto generated by OpenAPI Generator 7.8.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule GameBrainAPI.Model.SearchSuggestionResponse do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :results
  ]

  @type t :: %__MODULE__{
    :results => [GameBrainAPI.Model.SearchSuggestionResponseResultsInner.t] | nil
  }

  alias GameBrainAPI.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:results, :list, GameBrainAPI.Model.SearchSuggestionResponseResultsInner)
  end
end

