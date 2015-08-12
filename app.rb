require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/tamagotchi')

get('/') do
  @@update = true
  @@sleep = false
  @@playing = false
  @@feeding = false
  @@bath = false
  erb(:index)
end

post('/tamagotchi') do
  @@name = params.fetch('name')
  @@my_pet = Tamagotchi.new(@@name)
  erb(:tamagotchi)
end

get('/tamagotchi') do
  if @@update
    @@my_pet.time_passes()
  end
  @@update = true
  erb(:tamagotchi)
end

post('/feed') do
  @@my_pet.feed()
  @@update = false
  @@feeding = true
  redirect('/tamagotchi')
end

post('/sleep') do
  @@my_pet.sleep()
  @@update = false
  @@sleep = true
  redirect('/tamagotchi')
end

post('/play') do
  @@my_pet.play()
  @@update = false
  @@playing = true
  redirect('/tamagotchi')
end

post('/clean') do
  @@my_pet.clean()
  @@update = false
  @@bath = true
  redirect('/tamagotchi')
end

# post('/time') do
#   @@my_pet.time_passes()
#   @@update = false
#   redirect('/tamagotchi')
# end
