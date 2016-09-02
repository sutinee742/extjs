class LoginController < ApplicationController

  def login
    puts('login')
    puts(session[:username])
    puts(session[:password])
    if params[:username]=='root' && params[:password]=='1234'
      session[:username] = params[:username]
      session[:password] = params[:password]
      puts(session[:username])
      puts(session[:password])
      render :json => {success: true}
    else
      render :json => {success: false}
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
