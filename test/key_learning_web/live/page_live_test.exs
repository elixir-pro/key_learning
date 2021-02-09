defmodule KeyLearningWeb.PageLiveTest do
  use KeyLearningWeb.ConnCase

  import Phoenix.LiveViewTest

  test "disconnected and connected render", %{conn: conn} do
    {:ok, page_live, disconnected_html} = live(conn, "/")
    assert disconnected_html =~ "Hello World"
    assert render(page_live) =~ "Hello World"
  end
end
