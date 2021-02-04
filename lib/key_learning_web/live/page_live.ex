defmodule KeyLearningWeb.PageLive do
  use KeyLearningWeb, :live_view

  @impl true
  def mount(_params, _session, socket) do
    IO.inspect(self())
    {:ok, socket}
  end

end
