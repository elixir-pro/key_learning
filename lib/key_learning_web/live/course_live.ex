defmodule KeyLearningWeb.CourseLive do
  use KeyLearningWeb, :live_view
  alias KeyLearning.School

  @impl true
  def mount(%{"id" => id}, _session, socket) do
    course = School.get_course!(id)
    {:ok, socket |> assign(course: course)}
  end

end
