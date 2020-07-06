require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

   get '/' do

    erb :super_hero
   end

    post '/team' do
    @superteam = CtreateTeam.new(params[:team]) 
    params[:team][:heroes].each do |hero|
        CtreateHero.new(hero)
    end 
    @heroes = CtreateHero.all
    erb :team 
    end 


end
