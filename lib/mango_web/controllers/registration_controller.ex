defmodule MangoWeb.RegistrationController do
  use MangoWeb, :controller
  alias MangoWeb.Router.Helpers, as: Routes
  alias Mango.CRM

  def new(conn, _) do
    changeset = CRM.build_customer()
    render(conn, "new.html", changeset: changeset)
  end

  def create(conn, %{"registration" => registration_params}) do
    case CRM.create_customer(registration_params) do
      {:ok, _customer} ->
        conn
        |> put_flash(:info, "Registration successful")
        |> redirect(to: Routes.page_path(conn, :index))

      {:error, changeset} ->
        conn
        |> render(:new, changeset: changeset)
    end
  end
end
