class SportsTeam

attr_reader :team_name, :team_members
attr_accessor :coach_name

  def initialize(original_team_name, original_team_members, current_coach)
    @team_name = original_team_name
    @team_members = original_team_members
    @coach_name = current_coach
  end

  def add_player_name(new_player)
    @team_members.push("Prince")
  end

end
