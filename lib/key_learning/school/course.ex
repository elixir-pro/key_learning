defmodule KeyLearning.School.Course do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id
  schema "courses" do
    field :image_path, :string
    field :nome, :string

    timestamps()
  end

  @doc false
  def changeset(course, attrs) do
    course
    |> cast(attrs, [:nome, :image_path])
    |> validate_required([:nome, :image_path])
  end
end
