defmodule KeyLearningWeb.Api.CourseControllerTest do
  use KeyLearningWeb.ConnCase, async: true

  alias KeyLearning.School

  def fixture(:course) do
    {:ok, course} = School.create_course(%{nome: "nome do curso", image_path: "some image path"})

    course
  end

  setup %{conn: conn} do
    {:ok, conn: put_req_header(conn, "accept", "application/json")}
  end

  describe "index" do
    test "list all courses", %{conn: conn} do
      conn = get(conn, Routes.api_course_path(conn, :index))
      assert json_response(conn, 200)["data"] == []
    end
  end

  describe "create_course" do
    setup :register_and_sign_in_user

    test "success: renders products when data is valid", %{conn: conn} do
      conn =
        post(conn, Routes.api_course_path(conn, :create),
          course: %{nome: "nome do curso", image_path: "algum caminho"}
        )

      assert %{"id" => id} = json_response(conn, 201)["data"]

      conn = get(conn, Routes.api_course_path(conn, :show, id))

      assert %{
               "id" => id,
               "image_path" => "algum caminho",
               "nome" => "nome do curso"
             } = json_response(conn, 200)["data"]
    end

    test "error: renders error when data is invalid", %{conn: conn} do
      conn =
        post(conn, Routes.api_course_path(conn, :create), course: %{nome: nil, image_path: nil})

      assert json_response(conn, 422)["errors"] == %{
               "image_path" => ["can't be blank"],
               "nome" => ["can't be blank"]
             }
    end
  end

  describe "update_course" do
    setup [:register_and_sign_in_user, :create_course]

    test "render course when data is valid", %{conn: conn, course: course} do
      conn =
        put(conn, Routes.api_course_path(conn, :update, course),
          course: %{nome: "some updated name", image_path: "some updated image path"}
        )

      assert json_response(conn, 200)["data"] == %{
               "id" => course.id,
               "image_path" => "some updated image path",
               "nome" => "some updated name"
             }
    end

    test "renders errors when trying to update with invalid data", %{conn: conn, course: course} do
      conn =
        put(conn, Routes.api_course_path(conn, :update, course),
          course: %{nome: nil, image_path: nil}
        )

      assert json_response(conn, 422)["errors"] == %{
               "image_path" => ["can't be blank"],
               "nome" => ["can't be blank"]
             }
    end
  end

  describe "delete_course" do
    setup [:register_and_sign_in_user, :create_course]

    test "deletes chosen course", %{conn: conn, course: course} do
      conn = delete(conn, Routes.api_course_path(conn, :delete, course))
      assert response(conn, 204)

      assert_error_sent 404, fn ->
        get(conn, Routes.api_course_path(conn, :show, course))
      end
    end
  end

  defp create_course(_) do
    course = fixture(:course)
    %{course: course}
  end
end
