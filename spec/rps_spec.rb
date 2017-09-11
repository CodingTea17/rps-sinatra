require('rspec')
require('pry')
require('rps')

  describe('RPS#wins?') do
  it("returns true if rock is the first argument and scissors is the second") do
    game = RPS.new()
    expect(game.wins?("rock", "scissors")).to(eq(true))
  end

  it("returns true if scissors is the first argument and paper is the second") do
    game = RPS.new()
    expect(game.wins?("scissors", "paper")).to(eq(true))
  end

  it("returns true if paper is the first argument and rock is the second") do
    game = RPS.new()
    expect(game.wins?("paper", "rock")).to(eq(true))
  end

  it("returns false if rock is the first argument and paper is the second") do
    game = RPS.new()
    expect(game.wins?("rock", "paper")).to(eq(false))
  end

  it("returns false if scissors is the first argument and rock is the second") do
    game = RPS.new()
    expect(game.wins?("scissors", "rock")).to(eq(false))
  end

  it("returns false if paper is the first argument and scissors is the second") do
    game = RPS.new()
    expect(game.wins?("paper", "scissors")).to(eq(false))
  end

  it("returns false if both players select the same move") do
    game = RPS.new()
    expect(game.wins?("paper", "paper")).to(eq(false))
  end

end
