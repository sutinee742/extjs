class MainController < ApplicationController

  def index
    puts('index')
    puts(session[:username])
    puts(session[:password])
    if session[:username]==nil && session[:password]==nil
      puts('no session')
      redirect_to root_url
    end
  end

  def logout
    puts('logout')
    puts(params)
    puts(session[:username])
    puts(session[:password])
    if session[:username]=='root' && session[:password]=='1234'
      # @_current_user = session[:current_user_id] = nil
      # reset_session
      
      session[:username]=nil
      session[:password]=nil
      puts(session[:username])
      puts(session[:password])
      render :json => {success: true}
    else
      render :json => {success: false}
    end
  end
end
