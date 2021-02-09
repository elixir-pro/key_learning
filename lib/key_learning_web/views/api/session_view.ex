defmodule KeyLearningWeb.Api.SessionView do
  use KeyLearningWeb, :view

  def render("created.json", %{user: user, jwt: jwt}) do
    %{
      status: :ok,
      data: %{email: user.email, jwt: jwt},
      message: "You are successfuly logged in!"
    }
  end

  def render("error.json", %{message: message}) do
    %{status: :not_found, data: %{}, message: message}
  end
end
