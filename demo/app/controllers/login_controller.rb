class LoginController < ApplicationController

  def login
    puts('login')
    @username = params[:username]
    @password = params[:password]
    @user = Employee.searchuser(@username,@password)[0]
    # puts(@user.name)
    if @user
      session[:username] = params[:username]
      session[:password] = params[:password]
      puts(session[:username])
      puts(session[:password])
      render :json => {success: true}
    else
      render :json => {success: false}
    end
  end


end
