module IntegrationHelpers
    def is_logged_in?
      !session[:user_id].nil?
    end
    
    def login(user)  
        session[:user_id] = user.id
    end
  end