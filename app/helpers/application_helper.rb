module ApplicationHelper

    def current_user
        @current_user ||= User.find_by_id(session[:user_id]) if session[:user_id]
    end

    def logged_in?
        current_user
    end

    def redirect_if_not_logged_in
        if !logged_in?
            # flash[:not_logged_in] = "You need to be logged in first, in order to view what you would like to see."
            redirect_to login_path
        end
    end

end
