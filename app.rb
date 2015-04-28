require('sinatra')
require('sinatra/reloader')
require('./lib/tama')
also_reload('./lib/**/*.rb')

get('/') do

    erb(:index)
end


get('/stats') do
    tama_name = params.fetch("tama_name")
    tama = Tama.new(tama_name)
    @food_level = tama.food_level()
    @activity_level = tama.activity_level()
    @sleep_level = tama.sleep_level()
    erb(:stats)
end
