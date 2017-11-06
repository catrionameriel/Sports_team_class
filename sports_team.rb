class SportsTeam

attr_reader :team_name, :team_members
attr_accessor :coach_name

  def initialize(original_team_name, original_team_members, current_coach)
    @team_name = original_team_name
    @team_members = original_team_members
    @coach_name = current_coach
    @points = 0
  end

  def add_player_name(new_player)
    @team_members.push(new_player)
  end

  def is_player_in_team(player_name)
    for member in @team_members
      if player_name.capitalize == member
        return true
      end
    end
    return false
  end

end
