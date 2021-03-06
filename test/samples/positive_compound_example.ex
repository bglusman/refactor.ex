def fixture(:user) do
  {:ok, user} = User.create_user(valid_attrs())
  user
end

describe "User" do
  test "user index requires authentication", %{conn: conn} do
    users_path(conn, :index)
  end
end

def fixture(:user_comments) do
  {:ok, user_comments} = UserComment.create_user_comment(valid_attrs())
  user_comments
end

describe "UserComments" do
  test "user_comments index requires authentication", %{conn: conn} do
    user_comments_path(conn, :index)
  end
end
