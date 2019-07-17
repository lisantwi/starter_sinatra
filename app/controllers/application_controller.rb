


class ApplicationController < Sinatra::Base

    set :views, "app/views"
    set :method_override, true
    set :session_secret, "328479283uf923fu8932fu923uf9832f23f232"
    enable :sessionss
    

    get "/" do
        erb :home
    end

    get "/login" do
        erb :home
    end

    

end
