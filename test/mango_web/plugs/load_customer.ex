defmodule MangoWeb.Plugs.LoadCustomerTest do
  use MangoWeb.ConnCase
  alias Mango.CRM

  @valid_attrs %{
    "name" => "John",
    "email" => "john@example.com",
    "password" => "secret",
    "residence_area" => "Area 1",
    "phone" => "11111"
  }

  test "fetch customer from session on subsequent visit" do
    # Create a new customer
    {:ok, customer} = CRM.create_customer(@valid_attrs)

    # Build a new conn by posting login data to "/session path"
    conn = post build_conn(), "/login", %{"session" => @valid_attrs}

    # Reuse the same conn now instead of building a new one
    conn = get(conn, "/")

    # We expect the conn to have the `:current_customer` data loaded in conn
    assert customer.id == conn.assigns.current_customer.id
  end
end
