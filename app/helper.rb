
        def logged_in?
          !!session[:owner_id]
        end
    
        def current_user
          current_user ||= Owner.find(session[:owner_id])
        end

