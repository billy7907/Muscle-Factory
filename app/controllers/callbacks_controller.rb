class CallbacksController < ApplicationController

  def twitter
    twitter_data = request.env['omniauth.auth']
    user = User.find_from_oauth(twitter_data)

    # if user.nil?
    #   user ||= User.create_from_oauth(twitter_data)
    # end
    user ||= User.create_from_omniauth(twitter_data)

    session[:user_id] = user.id
    redirect_to root_path
  end

  def facebook
    fb_data = request.env['omniauth.auth']
    user = User.find_from_oauth(fb_data)

    # if user.nil?
    #   user ||= User.create_from_oauth(fb_data)
    # end
    user ||= User.create_from_omniauth(fb_data)

    session[:user_id] = user.id
    redirect_to root_path
  end
end
