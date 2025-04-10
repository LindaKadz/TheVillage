defmodule TheVillageSfWeb.PageController do
  use TheVillageSfWeb, :controller

  def home(conn, _params) do
    # The home page is often custom made,
    # so skip the default app layout.
    date = Date.utc_today()
    render(conn, :home, layout: false, date: date.year)
  end

  def menu(conn, _params) do
    # The home page is often custom made,
    # so skip the default app layout.
    date = Date.utc_today()
    render(conn, :menu, date: date.year)
  end
end
