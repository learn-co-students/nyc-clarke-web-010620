require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get "/" do
    erb :welcome
  end

  get "/doctors" do 
    @doctors = Doctor.all  

    erb :index
  end 

  get '/doctors/:id' do
    @doctor = Doctor.find(params[:id])
    
    erb :show 
  end

end
