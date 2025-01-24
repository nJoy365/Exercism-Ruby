class Tournament
  def self.tally(input)
    Team.class_variable_get(:@@all_teams).clear
    tally = "Team                           | MP |  W |  D |  L |  P\n"
    if input.empty?
      return tally
    end
    teams = Team.class_variable_get(:@@all_teams)
    inp = input.split("\n").reject {| line| line.empty? }
    inp.each do |line|
      team1, team2, result = line.strip.split(";")
      team1 = Team.check_if_exists(team1)
      team2 = Team.check_if_exists(team2)
      case result
      when "win"
        team1.set_stats("win")
        team2.set_stats("loss")
      when "draw"
        team1.set_stats("draw")
        team2.set_stats("draw")
      when "loss"
        team1.set_stats("loss")
        team2.set_stats("win")
      end
    end
    
    teams.sort{ |t1, t2| 
      if t1.points == t2.points
        t1.name <=> t2.name
      else
        t2.points <=> t1.points
      end
      }.each { |team|
      tally += "#{team.name.ljust(30)} | #{team.matches_played.to_s.rjust(2)} | #{team.wins.to_s.rjust(2)} | #{team.draws.to_s.rjust(2)} | #{team.losses.to_s.rjust(2)} | #{team.points.to_s.rjust(2)}\n"
    }
    return tally

  end
end

class Team
  attr_reader :name, :matches_played, :wins, :draws, :losses, :points
  @@all_teams = []

  def initialize(name)
    @name = name
    @matches_played = 0
    @wins = 0
    @draws = 0
    @losses = 0
    @points = 0
    @@all_teams << self
    
  end

  def set_stats(result)
    case result
    when "win"
      @wins += 1
      @points += 3
    when "draw"
      @draws += 1
      @points += 1
    when "loss"
      @losses += 1
    end
    @matches_played += 1
  end

  def self.check_if_exists(name)
    if @@all_teams.any? { |team| team.name == name }
      return @@all_teams.select { |team| team.name == name }[0]
    else
      return Team.new(name)
    end
  end
end
