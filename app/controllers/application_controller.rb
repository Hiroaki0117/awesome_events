class ApplicationController < ActionController::Base
    helper_method :loggin_in?

    private

    def loggin_in?
        !!session[:user_id]
    end
end
