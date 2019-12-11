require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    # HOME / INDEX
    get '/' do
      erb :root
    end
    
    # CREATE, part 1
    get '/new' do
      erb :"pirates/new"
    end
    
    # CREATE, part 2
    post '/pirates' do
      # create one pirate and two ships
      # binding.pry
      @pirate = Pirate.new(params[:pirate])
      @ships = []
      params[:pirate][:ships].each do |ship|
        @ships << Ship.new(ship)
      end
      # binding.pry
      erb :"pirates/show"
    end

    # SHOW


  end
end
