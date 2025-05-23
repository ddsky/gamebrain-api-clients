# NOTE: This file is auto generated by OpenAPI Generator 7.8.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule GameBrainAPI.Model.SearchResponseActiveFilterOptionsInner do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :key,
    :connection,
    :values
  ]

  @type t :: %__MODULE__{
    :key => String.t | nil,
    :connection => String.t | nil,
    :values => [GameBrainAPI.Model.SearchResponseActiveFilterOptionsInnerValuesInner.t] | nil
  }

  alias GameBrainAPI.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:values, :list, GameBrainAPI.Model.SearchResponseActiveFilterOptionsInnerValuesInner)
  end
end

