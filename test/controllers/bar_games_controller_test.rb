require "test_helper"

class BarGamesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get bar_games_index_url
    assert_response :success
  end
end
