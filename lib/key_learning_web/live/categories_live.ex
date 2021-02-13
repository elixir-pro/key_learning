defmodule KeyLearningWeb.CategoriesLive do
  use KeyLearningWeb, :live_view
  alias KeyLearning.School

  @impl true
  def mount(_params, _session, socket) do
    {:ok,
     socket
     |> assign(
       courses: School.list_courses(),
       search: ""
     )}
  end

  def handle_event("search", %{"search" => search}, socket) do
    {
      :noreply,
      socket
      |> assign(
        courses: School.list_courses(search),
        search: search
      )
    }
  end
end
