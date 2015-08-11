require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/tamagotchi')

get('/') do
  erb(:index)
end

post('/tamagotchi') do
  @@name = params.fetch('name')
  @@my_pet = Tamagotchi.new(@@name)
  erb(:tamagotchi)
end

get('/tamagotchi') do
  erb(:tamagotchi)
end

post('/feed') do
  @@my_pet.feed()
  redirect('/tamagotchi')
end

post('/sleep') do
  @@my_pet.sleep()
  redirect('/tamagotchi')
end

post('/play') do
  @@my_pet.play()
  redirect('/tamagotchi')
end

post('/clean') do
  @@my_pet.clean()
  redirect('/tamagotchi')
end

post('/time') do
  @@my_pet.time_passes()
  redirect('/tamagotchi')
end
