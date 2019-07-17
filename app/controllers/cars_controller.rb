class CarsController < Sinatra::Base

    set :views, "app/views/cars"
    set :method_override, true

    get "/cars" do
        @cars = Car.all
        erb :index
    end

    get "/cars/:id" do 
        id = params[:id]
        @car = Car.find(id)
        erb :show
    end

end