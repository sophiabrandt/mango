defmodule Mango.Sales.Order do
  use Ecto.Schema
  import Ecto.Changeset
  alias Mango.Sales.{Order, LineItems}

  schema "orders" do
    # field :line_items, {:array, :map}
    field :status, :string
    field :total, :decimal
    embeds_many :line_items, LineItem, on_replace: :delete

    timestamps()
  end

  @doc false
  def changeset(%Order{} = order, attrs) do
    order
    |> cast(attrs, [:status, :total, :line_items])
    |> validate_required([:status, :total, :line_items])
  end
end
