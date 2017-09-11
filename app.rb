require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/rps')

get('/') do
  erb(:index)
end

get('/output') do
  game = RPS.new()
  @name = params.fetch("move")
  @ai = game.ai()
  if game.wins?(@name, @ai)
    @result = "Win!"
  else
    @result = "Lose!"
  end
  erb(:output)
end
