defmodule HelloWeb.HelloController do
  use HelloWeb, :controller

  def index(conn, _params) do
    conn
    # |> put_resp_content_type("text/plain")
    |> assign(:var, "This is an assignment")
    # |> put_flash(:info, "welcome back!")
    |> render("index.html")
  end

  @spec show(Plug.Conn.t(), map) :: Plug.Conn.t()
  def show(conn, %{"messenger" => messenger}) do
    render(conn, "show.html", [{:messenger, messenger}])
  end

  @spec show_map(Plug.Conn.t(), any) :: Plug.Conn.t()
  def show_map(conn, _params) do
    dict = %{apple: "3", strawberry: 4}

    conn
    |> assign(:dict, dict)
    |> render("showmap.html")
  end
end
