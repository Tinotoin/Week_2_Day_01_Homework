class Team

  attr_accessor :team_name, :players, :team_coach

  def initialize(input_team_name, input_players, input_team_coach)
    @team_name = input_team_name
    @players = input_players
    @team_coach = input_team_coach
  end

  def points(total)
    return total += 1
  end

  def standings(points)
  end

  def find_player(name)
  match = nil
  for name in [:players]
    match = player if(name[:players] == name)
  end
  return match
end

end
