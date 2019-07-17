class CarsController < Sinatra::Base

    set :views, "app/views/cars"
    set :method_override, true
    enable :sessions

    get "/cars" do
        @cars = Car.all
        erb :index
    end

    get "/cars/:id" do 
        id = params[:id]
        binding.pry
        @car = Car.find(id)
        erb :show
    end

    get "/cars/:id/edit" do
        @car = Car.find(params[:id])
        erb :edit
    end

    put "/cars/:id" do 
        @car = Car.find(params[:id])
        make = params[:make]
        model = params[:model]
        price = params[:price]
        for_sale = params[:for_sale]
        @car.update(make: make, model: model, price: price, for_sale: for_sale)
        redirect "/cars/#{@car.id}"
    end

end