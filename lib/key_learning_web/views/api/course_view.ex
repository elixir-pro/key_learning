defmodule KeyLearningWeb.Api.CourseView do
  use KeyLearningWeb, :view

  def render("index.json", %{courses: courses}) do
    %{data: Phoenix.View.render_many(courses, KeyLearningWeb.Api.CourseView, "course.json")}
  end

  def render("show.json", %{course: course}) do
    %{data: Phoenix.View.render_one(course, KeyLearningWeb.Api.CourseView, "course.json")}
  end

  def render("course.json", %{course: course}) do
    %{
      id: course.id,
      image_path: course.image_path,
      nome: course.nome
    }
  end
end
