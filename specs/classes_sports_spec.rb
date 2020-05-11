require('minitest/autorun')
require('minitest/reporters')

require_relative('../classes_sports')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestTeam < MiniTest::Test

  def test_team
    team = Team.new("United", ["Jonesy", "Vinny"], "Mclean")
  end

  def test_team_name
    team = Team.new("United", ["Jonesy", "Vinny"], "Mclean")
    assert_equal("United", team.team_name)
  end

  def test_players
    team = Team.new("United", ["Jonesy", "Vinny"], "Mclean")
    assert_equal(["Jonesy", "Vinny"], team.players)
  end

  def test_team_coach
    team = Team.new("United", ["Jonesy", "Vinny"], "Mclean")
    assert_equal("Mclean", team.team_coach)
  end

  def test_change_coach
    team = Team.new("United", ["Jonesy", "Vinny"], "Mclean")
    team.team_coach = "Brian"
    assert_equal("Brian", team.team_coach)
  end

  def test_add_players
    team = Team.new("United", ["Jonesy", "Vinny"], "Mclean")
    :players.push("Barney")
    assert_equal("Barney", team.players)
  end

  def test_points
    total = [0]
    team = Team.new("United", ["Jonesy", "Vinny"], "Mclean")
    assert_equal(1, team.points(total))
  end

# confused this part - ("Barney" team.[:players])
  # def test_find_player
  #   team = Team.new("United", ["Jonesy", "Vinny"], "Mclean")
  #   assert_equal("Barney" team.[:players])
  # end
end
