class CarsController < Sinatra::Base

    set :views, "app/views/cars"
    set :method_override, true

    get "/cars" do
        @cars = Car.all
        erb :index
    end

end