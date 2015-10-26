class ScotchesApp < Sinatra::Base
  get "/" do
    "Hi this is ScotchesApp"
  end

  # index
  get '/scotches' do
    @scotches = Scotch.all
    erb(:"scotches/index")
  end

  # new

  # create

  # show

  # edit
  get '/scotches/:id/edit' do
    @scotch = Scotch.find(params[:id])
    erb(:"scotches/edit")
  end

  # update
  post '/scotches/:id/update' do
    @scotch = Scotch.find(params[:id])
    if @scotch.update_attributes(params[:scotch])
      redirect("/scotches")
    else
      erb(:"scotches/edit")
    end
  end

  # destroy
end