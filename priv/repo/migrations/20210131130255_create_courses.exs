defmodule KeyLearning.Repo.Migrations.CreateCourses do
  use Ecto.Migration

  def change do
    create table(:courses, primary_key: false) do
      add :id, :binary_id, primary_key: true
      add :nome, :string
      add :image_path, :string

      timestamps()
    end

  end
end
