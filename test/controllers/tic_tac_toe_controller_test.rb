require 'test_helper'

class TicTacToeControllerTest < ActionDispatch::IntegrationTest
  test "should get play" do
    get tic_tac_toe_play_url
    assert_response :success
  end

  test "should get game_over" do
    get tic_tac_toe_game_over_url
    assert_response :success
  end

end
