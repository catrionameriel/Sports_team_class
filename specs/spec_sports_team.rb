require("minitest/autorun")
require("minitest/rg")
require_relative("../sports_team.rb")

class TestSportsTeam < MiniTest::Test

  def setup
    @sports_team = SportsTeam.new("The Glasgow Rockets", ["John", "Sean", "Peter"], "Catriona")
  end

  def test_team_name
    assert_equal("The Glasgow Rockets", @sports_team.team_name)
  end

  def test_team_member_names
    assert_equal(["John", "Sean", "Peter"], @sports_team.team_members)
  end

  def test_coach_name
    assert_equal("Catriona", @sports_team.coach_name)
  end

  def test_change_coach_name
    @sports_team.coach_name = "Angelica"
    assert_equal("Angelica", @sports_team.coach_name)
  end

  def test_add_player_name
    @sports_team.add_player_name("Prince")
    assert_equal(["John", "Sean", "Peter", "Prince"], @sports_team.team_members)
  end

  def test_is_player_in_team__true
    assert_equal(true, @sports_team.is_player_in_team("peter"))
  end

  def test_is_player_in_team__false
    assert_equal(false, @sports_team.is_player_in_team("Jesus"))
  end
end
