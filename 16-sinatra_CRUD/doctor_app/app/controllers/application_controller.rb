require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    set :method_override, true
  end

  get "/" do
    erb :welcome
  end

  # INDEX Action
  get "/doctors" do
    @doctors = Doctor.all 

    erb :index
  end

  # NEW Action
  get "/doctors/new" do    
    erb :new  
  end

  # SHOW Action
  get "/doctors/:id" do
    @doctor = Doctor.find(params[:id])
    
    erb :show
  end
  
  # CREATE Action
  post '/doctors' do
    doctor = Doctor.create(params)
    
    redirect to "/doctors/#{doctor.id}"
  end
  
  # EDIT Action
  get "/doctors/:id/edit" do    
    @doctor = Doctor.find(params[:id])
    
    erb :edit
  end 
  
  # UPDATE Action
  patch '/doctors/:id' do
    doctor = Doctor.find(params[:id])
    
    doctor.update(params[:doctor])

    redirect to "/doctors/#{doctor.id}"
  end

  # DELETE Action

end
