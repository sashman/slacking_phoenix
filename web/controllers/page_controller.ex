defmodule SlackingPhoenix.PageController do
  use SlackingPhoenix.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end

  def anonymize(conn, _params) do
    json conn, %{ text: _params["text"], response_type: "in_channel" }
  end
end
