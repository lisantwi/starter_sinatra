class OwnersController < Sinatra::Base

    set :views, "app/views/owners"
    set :method_override, true


    get "/owners" do
        @owners = Owner.all
        erb :show
    end

    post "/owners" do
        @owner = Owner.find_or_create_by(name: params["owner_name"])
        id = @owner.id
        redirect "owners/#{id}"
    end

    get "/owners/:id" do
        id = params[:id]
        @owner = Owner.find(id)
        erb :profile
    end


end