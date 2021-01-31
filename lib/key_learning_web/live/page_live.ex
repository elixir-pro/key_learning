defmodule KeyLearningWeb.PageLive do
  use KeyLearningWeb, :live_view

  @impl true
  def mount(_params, _session, socket) do
    {:ok, socket}
  end

  @impl true
  def render(assigns) do
    ~L"""
      Hello World
    """
  end
end
