# NOTE: This file is auto generated by OpenAPI Generator 7.8.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule GameBrainAPI.Model.GameResponseOffersInnerPrice do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :currency,
    :discount_percent,
    :value,
    :initial
  ]

  @type t :: %__MODULE__{
    :currency => String.t | nil,
    :discount_percent => float() | nil,
    :value => float() | nil,
    :initial => float() | nil
  }

  def decode(value) do
    value
  end
end

