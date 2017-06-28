defmodule PhoenixBlog.Api.UserController do
  use PhoenixBlog.Web, :controller

  alias PhoenixBlog.User

  def index(conn, _params) do
    users = from(u in User, select: %{username: u.username, id: u.id, provider: u.provider, email: u.email, role: u.role_id})
    |> Repo.all
    json conn, users
  end

  def show(conn, %{"id" => id}) do
    user = Repo.get!(User, id)
    user = %{username: user.username, id: user.id, provider: user.provider, email: user.email, role: user.role_id}
    json conn, user
  end

end