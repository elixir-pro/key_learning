defmodule KeyLearningWeb.Api.SessionControllerTest do
  use KeyLearningWeb.ConnCase, async: true

  import KeyLearning.AccountsFixtures

  describe "Post /api/session" do
    test "with no credentials, can't log in", %{conn: conn} do
      conn = post(conn, Routes.api_session_path(conn, :create), %{email: nil, password: nil})
      assert %{"message" => "User could not be authenticated"} = json_response(conn, 401)
    end

    test "with invalid password, user can't login", %{conn: conn} do
      user = user_fixture()

      conn =
        post(conn, Routes.api_session_path(conn, :create), %{
          email: user.email,
          password: "Some worng password"
        })

      assert %{"message" => "User could not be authenticated"} = json_response(conn, 401)
    end

    test "with valid username and password, usre can login", %{conn: conn} do
      user = user_fixture()

      conn =
        post(conn, Routes.api_session_path(conn, :create), %{
          email: user.email,
          password: valid_user_password()
        })

      assert %{
               "data" => %{
                 "jwt" => "" <> _user_token
               },
               "message" => "You are successfuly logged in!",
               "status" => "ok"
             } = json_response(conn, 200)
    end
  end
end
