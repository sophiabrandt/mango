defmodule MangoWeb.CartController do
  use MangoWeb, :controller
  alias Mango.Sales

  def add(conn, %{"cart" => cart_params}) do
    cart = "?"
    case Sales.add_to_cart(cart, cart_params) do
      {:ok, _} ->
        # do something on success
      {:error, _} ->
        # handle error
    end
  end
end
