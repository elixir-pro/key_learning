defmodule KeyLearningWeb.CategoriesLive do
  use KeyLearningWeb, :live_view
  alias KeyLearning.School

  @impl true
  def mount(_params, _session, socket) do
    {:ok,
     socket
     |> assign(
       courses: School.list_courses(),
       search: "",
       matches: []
     )}
  end

  def handle_event("search", %{"search" => search}, socket) do
    courses = School.list_courses(search)
    {
      :noreply,
      socket
      |> assign(
        courses: courses,
        search: search,
        matches: courses |> Enum.map(& &1.nome)
      )
    }
  end
end
