defmodule Hello.HelloController do
  use Hello.Web, :controller

  plug :action

  def index(conn, _params) do
    conn = put_session(conn, :foo, "bar")
    foo = get_session(conn, :foo)

    text conn, foo
  end
end
