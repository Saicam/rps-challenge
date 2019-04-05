class ResultChecker
  def self.check(player_1, player_2)
    to_obj(player_1).vs(player_2)
  end

  private

  def self.to_obj(player_1)
    case player_1
    when "rock"
      return Rock
    when "paper"
      return Paper
    when "scissors"
      return Scissors
    else
      return nil
    end
  end
end

class Rock
  def self.vs(versus)
    case versus
    when "paper"
      return 2
    when "scissors"
      return 1
    when "rock"
      return 0
    else
      return nil
    end
  end
end

class Paper
  def self.vs(versus)
    case versus
    when "paper"
      return 0
    when "scissors"
      return 2
    when "rock"
      return 1
    else
      return nil
    end
  end
end

class Scissors
  def self.vs(versus)
    case versus
    when "paper"
      return 1
    when "scissors"
      return 0
    when "rock"
      return 2
    else
      return nil
    end
  end
end
