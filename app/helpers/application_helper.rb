module ApplicationHelper
    def current_user
        @current_user ||= User.find_by_id(session[:user_id]) if session[:user_id]
    end

    def logged_in?
        current_user
    end

    def error(object)
        if object.errors.any?
            render partial: 'layouts/errors', locals: {object: object}
        end
    end
end
