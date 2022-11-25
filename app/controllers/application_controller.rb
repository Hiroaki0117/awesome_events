class ApplicationController < ActionController::Base
    before_action :authenticate
    helper_method :loggin_in?, :current_user

    private

    def loggin_in?
        !!current_user
    end

    def current_user
        return unless session[:user_id]
        @current_user ||= User.find(session[:user_id])
    end

    def authenticate
        return if loggin_in?
        redirect_to root_path, alert: "ログインしてください" 
    end
end
