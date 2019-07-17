require "sinatra/cookies"

class OwnersController < Sinatra::Base

    set :views, "app/views/owners"
    set :method_override, true
    # enable :sessions


    get "/owners" do
        @owners = Owner.all
        erb :show
    end

    post "/owners" do
        @owner = Owner.find_or_create_by(name: params["owner_name"])
        session[:owner_id] = @owner.id
        session[:owner_id]
        # binding.pry
        #  id = session[:owner_id]
        redirect "owners/#{@owner.id}"
    end

    get "/owners/:id" do
        # binding.pry
        if session[:owner_id] == params[:id].to_i
            id = session[:owner_id]
            @owner = Owner.find(id)
            erb :profile
        else
            erb :error
        end
    end


end