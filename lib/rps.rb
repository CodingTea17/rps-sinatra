class RPS
  def ai()
    ["rock", "paper", "scissors"].sample()
  end

  def wins?(player1, player2)

    if (player1 === "rock") & (player2 === "scissors")
      true
    elsif (player1 === "paper") & (player2 === "rock")
      true
    elsif (player1 === "scissors") & (player2 === "paper")
      true
    elsif (player1 === "rock") & (player2 === "paper")
      false
    elsif (player1 === "scissors") & (player2 === "rock")
      false
    elsif (player1 === "paper") & (player2 === "scissors")
      false
    elsif (player1 === player2)
      false
    end
  end
end
