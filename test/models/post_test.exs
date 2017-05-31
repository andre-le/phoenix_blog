defmodule PhoenixBlog.PostTest do
  use PhoenixBlog.ModelCase

  alias PhoenixBlog.Post

  @valid_attrs %{body: "some content", tittle: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Post.changeset(%Post{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Post.changeset(%Post{}, @invalid_attrs)
    refute changeset.valid?
  end
end
